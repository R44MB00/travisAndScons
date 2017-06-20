#include <stdio.h>
#include <string.h>

int main(int argc, const char * argv[]) {

    FILE *file = fopen(argv[1], "r");
    char line[1024];
    int time[9];
    int i = 0;
    int j = 0;
    int start = 0;
    int end = 0;
    int diff = 0;

    while (fgets(line, 1024, file)) 
    {
        char *value = " ";
        
        while (value != NULL) {
            
            if (i == 0) value  = strtok (line,":");
            else value = strtok (NULL,": \n");
            
            if (i >= 6)
            {
                i= 0;
                break;
            }

            time[i] = atoi(value);
            i++;
        }
    
        start = time[0]*3600 + time[1]*60 + time[2];    
        end = time[3]*3600 + time[4]*60 + time[5];  

        if (start > end) diff = start - end;
        else diff = end - start;

        time[6] = diff/3600;
        time[7] = (diff%3600)/60;
        time[8] = (diff%3600)%60;

        for (j = 6; j <= 7; j++) 
        {
            if (time[j] < 10) printf("0%d%s",time[j],":");
            else printf("%d%s",time[j],":");
        }
        
        if (time[8] < 10) printf("0%d\n",time[j]);
        else printf("%d\n",time[8]);
    
    } 
    return 0;
}