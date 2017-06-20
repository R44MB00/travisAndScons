#include <stdio.h>
#include <string.h>
int main(int argc, const char * argv[]) {
    FILE *file = fopen(argv[1], "r");
    char line[1024];
    int age;
    while (fgets(line, 1024, file)) {
        if (strlen(line)<=1) break;
        age = atoi(line);
        printf("%d\n",age);
        if ( age >=0 && age <=2) printf("Still in Mama's arms\n");
        if ( age >=3 && age <=4) printf("Preschool Maniac\n");
        if ( age >=5 && age <=11) printf("Elementary school\n");
        if ( age >=12 && age <=14) printf("Middle school\n");
        if ( age >=15 && age <=18) printf("High school\n");
        if ( age >=19 && age <=22) printf("College\n");
        if ( age >=23 && age <=65) printf("Working for the man\n");
        if ( age >=66 && age <=100) printf("The Golden Years\n");
        if ( age >100 || age <=0) printf("This program is for humans\n");
        
    }    
    return 0;
}