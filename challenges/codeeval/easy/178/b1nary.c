#include <stdio.h>
#include <string.h>
#include <math.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
		for (int i=0; i < sizeof(line); i++){
			if (line[i] == '\n')
				line[i] = '\0';
		}
		char *token, *elements[1000];
		int i = 0;
		int root;
		token = strtok(line, " ");
		while (token != NULL){
			elements[i]= token;
			i++;
			token = strtok(NULL, " ");
		}
		root=(int)sqrt((float)i);
		for (int j=(i- root); j<i;j++){
			for (int k=0;k<root;k++){
				printf("%s ",elements[j-(root*k)]);
			}
		}
		printf("\n");
	}
}
