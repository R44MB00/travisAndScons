#include <stdio.h>

int main(int argc, const char * argv[]) {
    FILE *file = fopen(argv[1], "r");
    char line[1024];
    while (fgets(line, 1024, file)) {
        if (atoi(line) % 2 == 0) {
            printf("%d\n", 1);
        } else {
            printf("%d\n", 0);
        }
    }
    return 0;
}
