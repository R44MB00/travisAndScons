#include <stdio.h>
#include <string.h>
#include <ctype.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
		for (int i=0; i < sizeof(line); i++){
			if (line[i] == '\n')
				line[i] = '\0';
		}
		char *token, *word, *code;
		token = strtok(line," ");
		word = token;
		token = strtok(NULL," ");
		code = token;
		for (int i=0;i<strlen(word);i++){
			if(code[i]== '1')
				putchar(toupper(word[i]));
			else
				putchar(word[i]);
		}
		printf("\n");
	}
}
