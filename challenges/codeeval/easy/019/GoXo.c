#include <stdio.h>
#include <string.h>
int main(int argc, const char * argv[]) {
    int number = 0;
    int p1 = 0;
    int p2 = 0;
    int bit_p1 = 0;
    int bit_p2 = 0;
    FILE *file = fopen(argv[1], "r");
    char line[1024];
    while (fgets(line, 1024, file)) {
        number = atoi(strtok(line,","));
        p1 = atoi(strtok(NULL,","));
        p2 = atoi(strtok(NULL,","));
        bit_p1 = (number & ( 1 << p1-1 )) >> p1-1;
        bit_p2 = (number & ( 1 << p2-1 )) >> p2-1;
        if(bit_p1==bit_p2){
            printf("%s\n","true");
        }else{
            printf("%s\n","false"); 
        }
    }
    return 0;
}
