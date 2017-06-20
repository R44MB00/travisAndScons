#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
	    int roller=1;
		for (int i=0; i < sizeof(line); i++){
			if (line[i] == '\n'){
				printf("\n");
				break;
			}
			if(isalpha(line[i])){
			    if(roller == 1){
			        putchar(toupper(line[i]));
			        roller--;
			    }
			    else{
			        putchar(line[i]);
			        roller++;
			    }
			}
			else
			    putchar(line[i]);
		}
	}
}
