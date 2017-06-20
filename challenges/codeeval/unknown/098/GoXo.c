#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main(int argc, const char * argv[]) {
   
    double coord[5];
    double d;
    FILE *file = fopen(argv[1], "r");
    char line[1024];

    while (fgets(line, 1024, file))
    {
        char *p = line;
        int i= 0;
        while (*p)
        {
            if ((p[0] == '-' && isdigit(p[1]))|| isdigit(p[0]))
            { 
                coord[i] = strtod(p, &p); 
                i++;
            }
            else p++;
        }
        
        d = sqrt((pow((coord[0]-coord[3]),2))+(pow((coord[1]-coord[4]),2)));
        if (d > coord[2]) printf("false\n");  
        else printf("true\n"); 
    }
    return 0;
}