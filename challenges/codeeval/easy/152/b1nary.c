#include <stdio.h>
#include <stdlib.h>
int main(int argc, const char * argv[]) {
	FILE *file = fopen(argv[1], "r");
	char line[1024];
	while (fgets(line,1024,file)) {
	    int age;
		for (int i=0; i < sizeof(line); i++)
			if (line[i] == '\n')
				line[i] = '\0';
		age = strtol(line,NULL,10);
		if (age>=0 && age<=2)
		    printf("Still in Mama's arms");
		if (age>=3 && age<=4)
		    printf("Preschool Maniac");
		if (age>=5 && age<=11)
		    printf("Elementary school");
		if (age>=12 && age<=14)
		    printf("Middle school");
		if (age>=15 && age<=18)
		    printf("High school");
		if (age>=19 && age<=22)
		    printf("College");
		if (age>=23 && age<=65)
		    printf("Working for the man");
		if (age>=66 && age<=100)
		    printf("The Golden Years");
		if (age<0 || age>100)
		    printf("This program is for humans");
		printf("\n");
	}
}
