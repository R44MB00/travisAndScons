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
		int bugs = 0;
		char* token = strtok(line, "|");
		char *words[2];
		words[0] = strdup(token);
		token = strtok(NULL, "|");
		words[1] = strdup(token);
		for(int i =0; i<strlen(words[0])-1;i++){
			if(words[0][i] != words[1][i+1])
				bugs++;
		}
		if (bugs > 0 && bugs <= 2)
			printf("Low");
		if (bugs > 2 && bugs <= 4)
			printf("Medium");
		if (bugs > 4 && bugs <= 6)
			printf("High");
		if (bugs > 6)
			printf("Critical");
		if (bugs == 0)
			printf("Done");
		printf("\n");
	}
}
