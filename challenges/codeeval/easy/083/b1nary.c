#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

void find_frequency(char s[], int count[]) {
   int c = 0;
 
   while (s[c] != '\n') {
      if (isalpha(s[c])) 
         count[tolower(s[c])-'a']++;
      c++;
   }
}
int comp (const void * elem1, const void * elem2) 
{
    int f = *((int*)elem1);
    int s = *((int*)elem2);
    if (f > s) return -1;
    if (f < s) return 1;
    return 0;
}
int beauty(int count[]){
	int beauty = 26;
	int sum = 0;
	for (int i =0; i < 26; i++){
		sum = sum+ (beauty*count[i]);
		beauty--;
	}
	return sum;
}

int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
		int count[26] = {0};
		int solve = 0;
		find_frequency(line,count);
		qsort (count, sizeof(count)/sizeof(*count), sizeof(*count), comp); 
		solve = beauty(count);
		printf("%d\n",solve);
	}
}
