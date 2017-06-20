#include <stdio.h>
#include <ctype.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
		for (int i=0; i < sizeof(line); i++){
			if (line[i] == '\n'){
				printf("\n");
				break;
			}
			if (isalpha(line[i])){
				putchar(tolower(line[i]));
				if (!isalpha(line[i+1]) && (line[i+1] != '\n'))
					printf(" ");
			}
		}
	}
}
