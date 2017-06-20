#include <stdio.h>
#include <string.h>
int main(int argc, const char * argv[]) {
    int number = 0;
    int sum = 0;
    FILE *file = fopen(argv[1], "r");
    char line[1024];
    while (fgets(line, 1024, file)) {
        number = atoi(line);
        sum = sum + number;
    }
    printf("%i\n",sum);
    return 0;
}