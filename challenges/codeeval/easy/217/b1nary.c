#include <stdio.h>
#include <stdlib.h>
#include <string.h>
void getBin(int num, char str[33])
{
	unsigned int j, i;
	str[32] = '\0';
	i = 0;
	for (j = 1 << 31; j > 0; j = j / 2){
		if (num & j) 
			str[i] = '1';
		else
			str[i] = '0';
		i++;
	}
}

int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
		for (int i=0; i < sizeof(line); i++){
			if (line[i] == '\n')
				line[i] = '\0';
		}
		char *token;
		char bin[33];
		int number1, number2, solve = 0;
		token = strtok(line, " ");
		number1 = strtol(token,NULL,10);
		token = strtok(NULL, " ");
		number2 = strtol(token,NULL,10);
		for (int i=1; i<=number2; i++){
			getBin(i,bin);
			int start = 0, nzeros = 0;
			for (int j=0; j< sizeof(bin);j++){
				if (bin[j] == '1')
					start = 1;
				if ((start == 1) && (bin[j] == '0'))
					nzeros++;
			}
			if (nzeros == number1)
				solve++;
		}
		printf("%d\n",solve);
	}
}
