#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
		char *token;
		char *text[10], *rows[10][20];
		int y = 1,x;
		token = strtok(line, "|");
		text[0] = token;
		token = strtok(NULL, "|");
		while (token != NULL){
			text[y] = token;
			text[y]++;
			token = strtok(NULL, "|");
			y++;
		}
		for (int i=0;i<y;i++){
			token = strtok(text[i], " ");
			x=0;
			while (token != NULL){
				rows[i][x] = token;
				token = strtok(NULL, " ");
				x++;
			}
		}
		for (int i=0; i<x; i++){
			int highest = strtol(rows[0][i],NULL,10);
			for (int j=0; j<y; j++){
				if (strtol(rows[j][i],NULL,10) > highest)
					highest = strtol(rows[j][i],NULL,10);
			}
			printf("%d ",highest);
		}
		printf("\n");
		
	}
}
