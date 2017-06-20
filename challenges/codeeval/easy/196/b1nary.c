#include <stdio.h>
#include <string.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
		for (int i=0; i < sizeof(line); i++){
			if (line[i] == '\n')
				line[i] = '\0';
		}
		char *token;
		token = strtok(line," ");
		while (token != NULL){
			putchar(token[strlen(token)-1]);
			for (int i=1; i<(strlen(token)-1);i++)
				putchar(token[i]);
			putchar(token[0]);
			token = strtok(NULL," ");
			if(token != NULL)
				printf(" ");
		}
		printf("\n");
	}
}
