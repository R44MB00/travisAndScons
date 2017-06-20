#include <stdio.h>
#include <string.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
		int count=0;
		char larrow[] = "<--<<";
		char rarrow[] = ">>-->";
		for (int i=0; i < sizeof(line); i++){
			if (line[i] == '\n')
				break;
			char test[6];
			strncpy(test, line + i, 5);
			test[5]='\0';
			if (strcmp(test,larrow) == 0 || strcmp(test,rarrow)==0)
				count++;
		}
		printf("%d\n",count );
	}
}
