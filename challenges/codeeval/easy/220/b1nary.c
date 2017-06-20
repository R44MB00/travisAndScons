#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
		char *token;
		char *ret;
		int nvampires, nzombies, nwitches, houses, candies = 0;
		token = strtok(line, ",");
		ret = strstr(token, ":") +2;
		nvampires = strtol(ret, NULL,10);
		token = strtok(NULL, ",");
		ret = strstr(token, ":") +2;
		nzombies = strtol(ret, NULL,10);
		token = strtok(NULL, ",");
		ret = strstr(token, ":") +2;		
		nwitches = strtol(ret, NULL,10);
		token = strtok(NULL, ",");
		ret = strstr(token, ":") +2;
		houses = strtol(ret, NULL,10);
		candies = ((nvampires*3)+(nzombies*4)+(nwitches*5))*houses/(nvampires+nzombies+nwitches);
		printf("%d\n",candies);
	}
}
