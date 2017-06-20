#include <stdio.h>
#include <string.h>
void removeChar(char *str, unsigned int index) {
    char *src;
    for (src = str+index; *src != '\0'; *src = *(src+1),++src) ;
    *src = '\0';
}
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
		char *token, *names, *letters, *wines[10];
		int i = 0, nwines = 0;
		token = strtok(line,"|");
		names = token;
		token = strtok(NULL,"|");
		letters = token;
		letters++;
		token = strtok(names, " ");
		while (token != NULL){
			wines[i] = token;
			i++;
			token = strtok(NULL, " ");
		}
		for (int j=0; j<i; j++){
			char *templetters = strdup(letters);
			for (int k=0; k<strlen(wines[j]); k++){
				for(int l=0; l<strlen(templetters)-1;l++){
					if (wines[j][k] == templetters[l]){
						removeChar(templetters,l);
					}
				}
			}
			if (strlen(templetters) == 1){
					printf("%s ",wines[j]);
					nwines++;
				}
		}
		if (nwines == 0)
			printf("False\n");
		else 
			printf("\n");
	}
}
