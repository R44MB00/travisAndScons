#include <stdio.h>
int main(int argc, const char * argv[]) {
    FILE *file = fopen(argv[1], "r");
    char line[1024];
	int i;
	int j;
    while (fgets(line, 1024, file)) {
        for(i=0;i<strlen(line);i++){
			for(j=0;j<i;j++){
				printf("*");
			}
			printf(line[i]);
		}
		printf("\n");
    }
    return 0;
}
