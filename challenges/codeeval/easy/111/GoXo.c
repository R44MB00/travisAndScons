#include <stdio.h>
#include <string.h>
int main(int argc, const char * argv[]) {
    FILE *file = fopen(argv[1], "r");
    char line[1024];
    while (fgets(line, 1024, file)) {
        char *word;
        char *longest = "";
        int long_len = 0;
        word = strtok (line," ");
        while (word != NULL) {
            if (strlen(word)>long_len){
                long_len = strlen(word);
                longest = word;
            }
            word = strtok (NULL," \n");
        }
        printf("%s\n",longest);
    }    
    return 0;
}
