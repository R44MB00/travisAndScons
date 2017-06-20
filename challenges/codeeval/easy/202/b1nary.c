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
		char *word;
		token = strtok(line," ");
		word = token;
		while (token != NULL){
			if (strlen(token)> strlen(word))
				word=token;
			token = strtok(NULL, " ");
		}
		putchar(word[0]);
		for (int i=1;i< strlen(word);i++){
			printf(" ");
			for(int j=1;j<=i;j++)
				printf("*");
			putchar(word[i]);
		}
		printf("\n");
	}
}
