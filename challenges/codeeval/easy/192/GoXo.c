#include <stdio.h>
#include <string.h>
int main(int argc, const char * argv[]) {
    FILE *file = fopen(argv[1], "r");
    char line[1024];
    int O;
    int P;
    int Q;
    int R;
    while (fgets(line, 1024, file)) {
        if (strlen(line)<=1) break;
        char *coord;
        coord = strtok (line," ");
        O = atoi(coord);
        coord = strtok (NULL," \n");
        P = atoi(coord);
        coord = strtok (NULL," \n");
        Q = atoi(coord);
        coord = strtok (NULL," \n");
        R = atoi(coord);
        if (R-P == 0){
            if (Q > O){
                printf("E\n");
                continue;
            }
            if (Q < O){
                printf("W\n");
                continue;
            }
            if (Q == O){
                printf("here\n");
                continue;
            }
        }
        if (Q-O == 0){
            if (R > P){
                printf("N\n");
                continue;
            }
            if (R < P){
                printf("S\n");
                continue;
            }
        }
        if ( R>P && Q>O ){
            printf("NE\n");
            continue;
        }
        if ( R>P && Q<O ){
            printf("NW\n");
            continue;
        }
        if ( R<P && Q<O ){
            printf("SW\n");
            continue;
        }
        if ( R<P && Q>O ){
            printf("SE\n");
            continue; 
        }
    }    
    return 0;
}