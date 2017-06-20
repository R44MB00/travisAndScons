#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
		char *token, *temp;
		char *timestamps[20];
		int i = 0;
		token = strtok(line, " ");
		while (token != NULL){
			timestamps[i] = token;
			i++;
			token = strtok(NULL, " ");
		}
		timestamps[i-1][8] = '\0';
		for (int j=0; j<i; j++){
			for (int k =0; k<(i-j-1); k++){
				if (strcmp(timestamps[k],timestamps[k+1]) < 0){
					temp = timestamps[k];
					timestamps[k] = timestamps[k+1];
					timestamps[k+1] = temp;
				}

			}
		}
		for (int j=0; j<i; j++){
			printf("%s ",timestamps[j]);
		}
		printf("\n");
	}
}
