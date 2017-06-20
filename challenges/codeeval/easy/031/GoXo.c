#include <stdio.h> 
#include <string.h>
int main(int argc, const char * argv[]) {
    char *sentence;
    char *character;
    int i;
    int print;
    FILE *file = fopen(argv[1], "r");
    char line[1024];
    while (fgets(line, 1024, file)) {
        print =-1;
        sentence  = strtok(line,",");
        character = strtok(NULL,"");
        for(i = strlen(sentence); i > 0 ; i = i - 1 ){
            if (character[0]==sentence[i]){
                print = i;
                break; 
            }
        }
        printf("%d\n",print);
    }
    return 0;
}