#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
		for (int i=0; i < sizeof(line); i++){
			if (line[i] == '\n')
				line[i] = '\0';
		}
		char* token = strtok(line, "|");
		char *words[2] ;
		char *endhex;
		char *endbin;
		long sumhex = 0, sumbin = 0;
		char sol[6] = "False";
		long rethex,retbin;
		words[0] = strdup(token);
		token = strtok(NULL, "|");
		words[1] = strdup(token);
		endhex = words[0];
		endbin = words[1];
		
		while(rethex=strtol(endhex, &endhex,16)){
			sumhex += rethex;
		}
		while(retbin=strtol(endbin, &endbin,2)){
			sumbin += retbin;
		}
		if (sumbin>=sumhex)
			strcpy(sol,"True");
		printf("%s\n",sol);
	}
}
