#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int digit_to_int(char d)
{
 char str[2];
 str[0] = d;
 str[1] = '\0';
 return (int) strtol(str, NULL, 10);
}
int char_to_int(char d){
	int a = 0;
	a = d - 'a' + 1;
	return a;
}
char int_to_char(int d){
	char a;
	a = 'a'+d-1;
	return a;
}
char int_to_digit(int d){
	char a;
	a = d + '0';
	return a;
}
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
		int x;
		int y;
		x=char_to_int(line[0]);
		y=digit_to_int(line[1]);
		if ((x-2) >= 1){
			if((y-1) >=1)
				printf("%c%c ",int_to_char(x-2),int_to_digit(y-1));
			if((y+1) <=8)
				printf("%c%c ",int_to_char(x-2),int_to_digit(y+1));
		}
		if ((y-2) >= 1){
			if((x-1) >=1)
				printf("%c%c ",int_to_char(x-1),int_to_digit(y-2));
		}
		if ((y+2) <= 8){
			if((x-1) >=1)
				printf("%c%c ",int_to_char(x-1),int_to_digit(y+2));
		}
		if ((y-2) >= 1){
			if((x+1) <=8)
				printf("%c%c ",int_to_char(x+1),int_to_digit(y-2));
		}
		if ((y+2) <= 8){
			if((x+1) <=8)
				printf("%c%c ",int_to_char(x+1),int_to_digit(y+2));
		}
		if ((x+2) <= 8){
			if((y-1) >= 1)
				printf("%c%c ",int_to_char(x+2),int_to_digit(y-1));
			if((y+1) <= 8)
				printf("%c%c ",int_to_char(x+2),int_to_digit(y+1));
		}
		printf("\n");
	}
}
