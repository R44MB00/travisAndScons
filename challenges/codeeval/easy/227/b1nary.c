#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int digit_to_int(char d)
{
 char str[2];

 str[0] = d;
 str[1] = '\0';
 return (int) strtol(str, NULL, 10);
}

int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
		char* token = strtok(line, " ");
		char *digits[4];
		div_t divresult;
		int sum = 0, i = 0;
		while (token != NULL){
			digits[i] = strdup(token);
			token = strtok(NULL, " ");
			i++;
		}
		for (int k=0; k<4; k++){
			sum += digit_to_int(digits[k][0])*2;
			sum += digit_to_int(digits[k][1]);
			sum += digit_to_int(digits[k][2])*2;
			sum += digit_to_int(digits[k][3]);
		}
		divresult = div (sum,10);
		if (divresult.rem == 0)
			printf("Real\n");
		else
			printf("Fake\n");
	}
}
