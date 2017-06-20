#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main(int argc, const char * argv[]) {
   
    FILE *file = fopen(argv[1], "r");
    char line[1024];

    while (fgets(line, 1024, file))
    {
        
        int i = 0;
        int count = 0;
        int sum = 0;
        
        while (i < 20)
        {
            if (isspace(line[i])){
                
                count = 0;

            }else{

                int num = line[i] - '0';
                if (count%2 == 0) sum = sum + num*2;
                else sum = sum + num;
                count ++;
            }   
            i++;
        }
        
        if (sum % 10 == 0) printf("Real\n");
        else printf("Fake\n");
    }
    return 0;
}