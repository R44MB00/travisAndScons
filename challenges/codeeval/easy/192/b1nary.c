#include <stdio.h>
#include <stdlib.h>
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
		int x1,x2,y1,y2;
		token = strtok(line, " ");
		x1 = strtol(token, NULL,10);
		token = strtok(NULL, " ");
		y1 = strtol(token,NULL,10);
		token = strtok(NULL, " ");
		x2 = strtol(token,NULL,10);
		token = strtok(NULL, " ");
		y2 = strtol(token,NULL,10);
		if ((x2-x1) == 0 && (y2-y1) == 0)
			printf("here");
		else if ((x2-x1) == 0)
			if((y2-y1) > 0)
				printf("N");
			else
				printf("S");
		else if ((y2-y1) == 0)
			if ((x2-x1) > 0)
				printf("E");
			else
				printf("W");
		else if ((x2-x1) > 0)
			if ((y2-y1) > 0)
				printf("NE");
			else
				printf("SE");
		else if ((x2-x1) < 0)
			if ((y2-y1) > 0)
				printf("NW");
			else
				printf("SW");
		printf("\n");
	}
}
