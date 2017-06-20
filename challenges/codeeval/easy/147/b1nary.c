#include <stdio.h>
#include <ctype.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
	    float upper=0,lower=0,total=0;
		for (int i=0; i < sizeof(line); i++){
			if (line[i] == '\n'){
				printf("\n");
				break;
			}
			if (isalpha(line[i])){
			    if(isupper(line[i]))
			        upper++;
			    else
			        lower++;
			    total++;
			}
		}
		printf("lowercase: %.2f uppercase: %.2f",lower*100/total,upper*100/total);
	}
}
