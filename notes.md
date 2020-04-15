## How to find an executable entry point

1. launch gdb and load the executable:
	_gdb {executable}_
2. get file info and look for `Entry point: ...`
	_info file_
3. set a breakpoint at the address obtained from the previous point
	_break *{address}_

OR _readelf -e {executable path}_ and look for the virtual address of the **.text** section.
	This section contains the code of the program (debug-only? machine code if there are not debug info?)

**WARNING:** this does not work if the executable is a shared library, the ntry point describes the offset
	at which the code should be located after establishing a base address (ASLR)

---

debugging dei comandi all'interno di vuos -> **vudebug +s [-- cmd [args]]**
	+s mostra tutte le sc nella console da cui si è lanciato umvu
in _vuos/cmd_ ci sono i comandi che possono essere lanciati all'interno di VUOS come vusu, vumount ecc.

**vufs**: modulo per la virtualizzazione dei fs, permette diversi tipi di montaggio (cow, mincow, ...)

per trovare le directory in cui **gcc** cerca i file inclusi usando `#include <...>` -> **gcc -xc -E -v -**

riga 283 -> creazione di un socket a cui viene assegnato il fd 3 (usato per la comuncazione tra terminali?)

riga 684 -> openat(..."/dev/ptmx) => file descriptor 5
/dev/ptmx è uno pseudoterminale master con major number 5 e minor 2
quando viene aperto, viene ritornato il file descriptor 5 e viene creato un pseudoterminale slave in /dev/pts/
quando entrambi sono aperti, lo slave funziona come interfaccia per il master:
	- dati scritti sullo slave vengono passati al master come input
	- dati scritti sul master vengono passati allo slave come input
meccanismo utilizzato per realizzare emulatori di terminali come _xterm_

openat(int dirfd, const char \*pathname, ...) -> apre il file specificato da _pathname_ relativamente alla cartella
	a cui fa riferimento il file descriptor dirfd
**AT_FDCWD** = File Descriptor Current Working Directory

definizione di un metodo decorata con *__attribute((constructor))__* per eseguirla automaticamente quando il modulo
che la contiene viene caricato, comportamento duale per *__attribute((destructor))__*


### SC per Effettuare Locking
- **flock(_int fd_, _int operation_)**: crea o rimuove un advisory lock per l'intero file indicato da _fd_
	i possibili valori per operation sono:
		- LOCK_SH: applica uno shared lock (che può essere condiviso con altri)
		- LOCK_EX: applica un exclusive lock
		- LOCK_UN: rimuove il lock sul file specificato
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
			l_whence = SEEK_CUR o SEEK_END
- **lockf(_int fd_, _int cmd_, _off_t len_)**: INTERFACCIA SOPRA A **fcntl**
	i possibili valori di cmd sono:
		- F_LOCK: applica un lock esclusivo alla regione specificata del file, mettendosi in attesa del rilascio di eventuali lock già esistenti
		- F_TLOCK: some sopra, ma ritorn un errore se esistono già dei lock sul file
		- F_ULOCK: rilascia il lock sulla regione specificata del file (una zona di lock può essere divisa in due se ne viene rilasciata solamente una parte)
		- F_TEST: ritorna 0 se la sezione indicata è libera da lock o bloccata dal processo corrente, -1 se un altro processo detiene il lock (errno settato)
	len indica la lunghezza desiderata a partire dalla posizione corrente nel file, se 0 arriva fino alla fine del file


## INSTALLAZIONE VIRTUALE DI PACCHETTI
_apt install_ si blocca quando prova ad aprire _/var/lib/dpkg/lock-frontend_ se non viene avviato con permessi di root
riga 593 di _straceapt_, **openat** fallisce con errore **EACCESS**
qui -> https://salsa.debian.org/apt-team/apt/-/blob/master/apt-pkg/contrib/fileutl.cc la sorgente dell'errore (riga 251)
	che effettivamente è una open
il lock ovviamente dovrebbe essere applicato solamente in seguito all'apertura del file usando il fd ottenuto
(chiamata parte da ~ https://salsa.debian.org/apt-team/apt/-/blob/master/apt-pkg/deb/debsystem.cc riga 120)

**PROBLEMA**: come comportarsi quando il programma tracciato cerca di accedere ad un file a cui non ha accesso
	- eseguire la sc, quindi esaminarne il risultato e, se è fallita per colpa dei permessi d'accesso,
		aprire un file fittizio
	- controllare i permessi _prima_ di eseguire la sc, e se non sono sufficienti, aprire un file fittizio
		-> overhead per TUTTE le sc open, non praticabile
	- comportamento standard, a meno che non sia presente un modulo che fornisce una descrizione del file desiderato
		con valori predefiniti/personalizzabili

work-around che risolve il problema dell'apertura del file di lock /var/lib/dpkg/lock-frontend:
	-> montare il fs virtuale usando VUFS con il comando `vumount -t vufs -o cow (anche mincow va bene?) {src} /`
	-> nuovo errore:
		E: Could not open lock file /var/cache/apt/archives/lock - open (2: No such file or directory)
		E: Unable to lock directory /var/cache/apt/archives/
	-> l'errore dovrebbe essere dovuto al fatto che /var/caches/apt/archives/ appartenga a root, quindi open non riesce a trovare
		il file specificato perché non può accedere alla cartella in cui è contenuto
	=> il secondo errore è dovuto comunque al fallimento dell'apertura del file, non si presenta ancora il problema relativo alla
		mancanza di virtualizzazione delle SC per il file locking
	vedi https://salsa.debian.org/apt-team/apt/-/blob/master/apt-pkg/acquire.cc riga 165

**VIRTUALIZZAZIONE DI DIRECTORY** (vedi http://wiki.v2.cs.unibo.it/wiki/index.php?title=ViewFS per la versione con la vecchia sintassi)
il comando da inserire all'interno di una shell di _umvu_ è **vumount -t vufs -o {opt} {source} {destination}**
	dopo aver eseguito `vu_insmod unrealuidgid vufs [vufuse?]
	MINCOW: minimal copy-on-write, le strutture dei due file system vengono fuse, e le operazioni permesse vengono effettuate trasparentemente
		diventa un servizio copy-on-write quando si tenta di effettuare un'operazione non permessa, in tal caso sembra che la directory/il file
		sia stato eliminato dal mount point, ma viene solamente "nascosto" e copiato nella directory _src_ per tenere traccia delle differenze
	COW: il meccanismo di copia viene applicato anche per le operazioni che sarebbero permesse, le modifiche vengono salvate nella directory sorgente
		(nella cartella reale, come nel caso precedente?) quindi ogni volta che si monta tale cartella in qualche mount point le modifiche in src
		vengono applicate automaticamente
