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
		char* token = strtok(line, ",");
		char *words[2] ;
		words[0] = strdup(token);
		token = strtok(NULL, ",");
		words[1] = strdup(token);
		for (int i=strlen(words[0]); i>=0 ; i-=1){
			if (words[0][i] == words[1][0]){
				printf("%d",i);
				break;
			}
			if ( (i == 0) && (words[0][i] != words[1][0]))
				printf("%d",-1);
		}
		printf("\n");
	}
}