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
		char* token = strtok(line, " ");
		char *words[100] ;
		words[0] = strdup(token);
		int i = 1;
		while (token != NULL)
		{
			words[i] = strdup(token);
			i++;
			token = strtok(NULL, " ");
		}
		int j;
		for(j=i-1; j>0; j-=1){
			printf(words[j]);
			printf(" ");
		}
		printf("\n");
	}
}