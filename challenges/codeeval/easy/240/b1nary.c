#include <stdio.h>
#include <stdlib.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
		for (int i=0; i < sizeof(line); i++){
			if (line[i] == '\n')
				line[i] = '\0';
		}
		int mersenne[] = {3,7,31,127,2047,8191};
		char *ptr;
		long ret;
		ret = strtol(line, &ptr, 10);
		int i = 1;
		printf("%d",mersenne[0]);
		while(mersenne[i]<=ret){
			printf(", %d",mersenne[i]);
			i++;
		}
		printf("\n");
	}
}
