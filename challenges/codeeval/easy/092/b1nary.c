#include <stdio.h>
#include <string.h>

int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
		for (int i=0; i < sizeof(line); i++){
			if (line[i] == '\n')
				line[i] = ' ';
		}
		char* prev = strtok(line, " ");
		char* current = strtok(NULL, " ");
		char* next = strtok(NULL, " ");
		while (next != NULL)
		{
			prev=current;
			current=next;
			next = strtok(NULL, " ");
		}
		puts(prev);
	}
	fclose(file);
}