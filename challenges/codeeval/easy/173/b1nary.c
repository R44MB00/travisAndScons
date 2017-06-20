#include <stdio.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
		char last = line[0];
		putchar(line[0]);
		for (int i=1; i < sizeof(line); i++){
			if (line[i] == '\n'){
				printf("\n");
				break;
			}
			if (line[i] != last)
				putchar(line[i]);
			last=line[i];
		}
	}
}
