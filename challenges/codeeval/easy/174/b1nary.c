#include <stdio.h>
#include <string.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	char *words[] = {", yeah!", ", this is crazy, I tell ya.", ", can U believe this?", ", eh?", ", aw yea.", ", yo.", "? No way!", ". Awesome!"};
	int is = 0, x = 0;
	while (fgets(line,1024,file)) {
		for (int i=0; i < sizeof(line); i++){
			if (line[i] == '\n'){
				printf("\n");
				break;
			}
			if (line[i] == '.' || line[i] == '!' || line[i] == '?'){
				is++;
				if (is > 1){
					printf("%s", words[x]);
					x++;
					if (x>7)
						x=0;
					is=0;
				}
				else
					printf("%c",line[i]);
			}
			else
				printf("%c",line[i]);
		}
	}
}
