#include <stdio.h>
#include <string.h>

int main(int argc, const char * argv[]) {

    FILE *file = fopen(argv[1], "r");
    char line[1024];
    char *hs[] = {"", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"};
    char *ts[] = {"", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"};
    char *os[] = {"", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"};
    int   len[] = { 0,   1,    2,     3,    2,   1,    2,     3,      4,    2};

    while (fgets(line, 1024, file)) 
    {   
       
        int num = atoi(line);

        while (num >= 1000)
        {
            printf("%c",'M');
            num -= 1000;
        }
        
        printf("%s",hs[num/100]);
        num = num % 100;

        printf("%s",ts[num/10]);
        num = num % 10;

        printf("%s",os[num]);
        
        printf("\n");
        
    } 
    return 0;
}