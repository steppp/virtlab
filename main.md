# Main project file

## Analyze all locking system calls provided by Linux

### SC per Effettuare Locking

- **flock(_int fd_, _int operation_)**: crea o rimuove un advisory lock per l'intero file indicato da _fd_
	i possibili valori per operation sono:
		- LOCK_SH: applica uno shared lock (che può essere condiviso con altri)
		- LOCK_EX: applica un exclusive lock
		- LOCK_UN: rimuove il lock sul file specificato
	particolarita' di flock:
		- chiamata **BLOCCANTE** se effettuata su un *fd* con un lock incompatibile o su cui e' gia' presente un lock esclusivo
		- per non bloccare l'esecuzione, ad *operation* puo' essere eseguito un OR bit a bit con il flag **LOCK_NB**; in tal caso l'esecuzione non viene bloccata in nessun caso, e se invece avrebbe dovuto esserlo, la chiamata restituisce un errore **EWOULDBLOCK**
		- in Linux, **flock** e **fcntl** hanno una semantica diversa in relazione a fork e dup, e non dovrebbero essere compatibili
		- via NFS invece, i due tipi di lock possono interagire in quanto, non essendo **flock** supportata attraverso questo tipo di mount, viene usato **fcntl** al suo posto
		- se un processo usa open (o simili) per ottenere file descriptor multipli per lo stesso file, questi vengono trattati indipendentemente, ovvero applicare un lock a fd diversi ma che si rifanno allo stesso file portera' ad un errore dopo la prima chiamata che termina con successo
		- il tipo di lock su un file puo' essere cambiato, ma questa NON E' UN'OPERAZIONE ATOMICA
		- un processo ha sempre uno ed un solo tipo di lock su un determinato file; chiamate successive causano il cambiamento del tipo di lock
		- i lock applicati da **flock** sono preservati dopo una **execve**

- **fcntl(_int fd_, _int cmd_, _struct flock *lock_)**: crea, rimuove, o ottiene informazioni riguardo ad un lock
		per parti del file indicato da _fd_
	i possibili valori per cmd sono:
		- F_SETLK: applica il lock, se ne esiste già uno per la regione di file specificata, la call ritorna -1
			ed errno viene settato adeguatamente
		- F_SETLKW: applica il lock, mettendosi in attesa se ne esiste già uno per la regione specificata
		- F_GETLK: ottiene informazioni su eventuali lock di parti di file (vedi man fcntl -> Advisory record locking)
	il puntatore struct flock contiene le informazioni sul lock da impostare (o viene riempito dalla sc con i dati corretti
			in seguito ad una F_GETLK, e contiene i seguenti campi:
		- short l_type: tipo di lock (F_RDLCK - read lock, F_WRLCK - write lock, F_UNLCK - unlock)
		- short l_whence: punto di partenza di l_start (SEEK_SET - inizio del file, SEEK_CUR - posizione corrente, SEEK_END - fine del file)
		- off_t l_start: offset inziale per il lock
		- off_t l_len: lunghezza per il lock, se = 0 allora vengono considerati tutti i byte da l_start alla fine del file, può essere negativa se
			l_whence = SEEK_CUR o SEEK_END _
	particolarita' di fcntl:
		- un processo puo' avere un solo lock su una determinata regione di un file; se si tenta di applicarne un secondo, il lock viene convertito nel nuovo tipo (questo potrebbe causare una separazione, rimpicciolimento e/o unione di due regioni)
		- per poter applicare *write locks*, fd deve essere aperto in scrittura, in lettura per *read locks*
		- vengono rilevati **deadlock** quando si piazzano dei lock usando **F_SETLKW**
		- i lock vengono automaticamente rilasciati quando un processo termina
		- 
		- per poter applicare *write locks*, fd deve essere aperto in scrittura, in lettura per *read locks*
		- vengono rilevati **deadlock** quando si piazzano dei lock usando **F_SETLKW**
		- i lock generati da **fcntl** non vengono preservati quando si fa una *fork*, ma permangono con una *execve*
		- i lock sono associati al processo, e cio' ha spiacevoli conseguenze: se un processo chiude un fd, tutti i lock di quel processo sul file a cui si riferiva il file descriptor vengono rilasciati e tutti i thread in un processo condividono gli stessi lock; per risolvere questi problemi esistono gli **open file description locks**
		- gli **OFD** locks si comportano sotto molti punti di vista come quelli normali
		- questo significa che invece di essere associati al processo che li ha creati, sono *associati al file descriptor* usato per creare il lock, in un modo simile a **flock**
		- sono quindi ereditati dai figli creati in seguito ad una fork o clone, e vengono automaticamente rilasciati alla chiusura dell'ultimo open file description
		- i lock possono essere in conflitto anche quando i lock interessati sono delle due diverse tipologie (tradizionali vs. OFD)
		- i lock applicati sullo stesso fd sono invece compatibili, e vale quanto detto per i lock tradizionali
		- gli OFD locks acquisiti tramite fd diversi possono essere in conflitto, e quindi possono essere usati per sincronizzare thread diversi dello stesso processo, eseguendo su ognuno una **open** sullo stesso file
		- il campo *l_pid* della struttura **flock** deve essere posto a 0
		- i comandi per gestire gli OFD locks sono analoghi alla controparte tradizionale: **F_OFD_SETLK**, **F_OFD_SETLKW**, **F_OFD_GETLK**
		- questa variante di record locing non implementa un controllo su eventuali *deadlock*

- **lockf(_int fd_, _int cmd_, _off_t len_)**: INTERFACCIA SOPRA A **fcntl**
	i possibili valori di cmd sono:
		- F_LOCK: applica un lock esclusivo alla regione specificata del file, mettendosi in attesa del rilascio di eventuali lock già esistenti
		- F_TLOCK: some sopra, ma ritorn un errore se esistono già dei lock sul file
		- F_ULOCK: rilascia il lock sulla regione specificata del file (una zona di lock può essere divisa in due se ne viene rilasciata solamente una parte)
		- F_TEST: ritorna 0 se la sezione indicata è libera da lock o bloccata dal processo corrente, -1 se un altro processo detiene il lock (errno settato)
	len indica la lunghezza desiderata a partire dalla posizione corrente nel file, se 0 arriva fino alla fine del file

**In summary**: there are only 2 effectively distinct ways to operate with locks in Linux:
 	- one is using **flock**
	- the other using **fcntl**, since **lockf** is just a convenience wapper built on top of it

**flock** itself could be implemented using only **fcntl** locking APIs since the capabilities of the former are
a subset of the ones of the latter:
	- a *shared lock* can be obtained by applying a *read* one with **fcntl**
	- an *exclusive lock* on the other hand corresponds to a *write lock*
	- removal of a lock is a common functionality
	- **flock** applies locks to ENTIRE files, and **fcntl** locks can easily do that as well
