#include <stdio.h>
#include <stdint.h>
#include <sys/stat.h>
int main(int argc, const char * argv[]) {
	struct stat st;
	stat(argv[1], &st);
	printf("%jd\n", (intmax_t) st.st_size);
}