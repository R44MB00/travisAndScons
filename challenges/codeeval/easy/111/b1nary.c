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
		int len= -1;
		char* longest;
		char* token =strtok(line, " ");
		while (token != NULL)
		{
			int tok_len = strlen(token);
			if (tok_len > len)
			{
				len= strlen(token);
				longest = token;
			}
		token = strtok(NULL, " ");
		}
		puts(longest);
	}
	fclose(file);
}
