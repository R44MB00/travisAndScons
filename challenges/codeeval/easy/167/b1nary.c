#include <stdio.h>
#include <string.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	char text[] = "... <Read More>";
	while (fgets(line,1024,file)) {
		int len=0;
		for (int i=1; i < sizeof(line); i++){
			if (line[i] == '\n')
				line[i] == '\0';
		}
		len = strlen(line);
		if (len <=56)
			printf("%s",line);
		else{
			int space=0;
			for (int i=0; i<40;i++)
				if (line[i] == ' ')
					space = i;
			if (space != 0)
				for (int i=0; i<space;i++)
					putchar(line[i]);
			else
				for (int i=0; i<40;i++)
					putchar(line[i]);
			printf("%s\n",text);
		}
	}
}
