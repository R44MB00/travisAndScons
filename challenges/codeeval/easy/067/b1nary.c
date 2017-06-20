#include <stdio.h>
#include <stdlib.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
		for (int i=0; i < sizeof(line); i++){
			if (line[i] == '\n')
				line[i] = '\0';
		}
		char *ptr;
		long ret;
		ret = strtol(line, &ptr, 16);
		printf("%d\n",ret);
	}
}
