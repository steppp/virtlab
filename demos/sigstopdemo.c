#include <stdio.h>
#include <signal.h>

int main() {
	raise(SIGSTOP);
	printf("not stopped or resumed\n");
	return 0;
}
