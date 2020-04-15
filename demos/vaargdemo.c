#include <stdio.h>
#include <stdarg.h>

void va_func(int sysno, ...) {
	va_list ap;
		
	va_start(ap, sysno);
	char *string_arg = va_arg(ap, char *);
	int int_arg = va_arg(ap, int);
	char char_arg = (char) va_arg(ap, int);
	va_end(ap);

	printf("%s\t%d\t%c\n", string_arg, int_arg, char_arg);
}

int main() {
	va_func(3, "helo", 42, 'c');
	return 0;
}
