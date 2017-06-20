#include <stdio.h>
#include <string.h>

int main(int argc, const char * argv[]) {
   
    FILE *file = fopen(argv[1], "r");
    char line[1024];
    
    char *slang[8] = {", yeah!",", this is crazy, I tell ya.",", can U believe this?",", eh?",", aw yea.",", yo.","? No way!",". Awesome!"};
   
    int fl = 0;
    int count = 0;
    int i;
    
    while (fgets(line, 1024, file))
    { 
        int len = strlen(line);
        i = 0;
        
        for (i = 0; i < len;i++)
        {
            
            if (((line[i] == '.')||(line[i] == '!')||(line[i] == '?'))&&(fl == 0)) 
            {
                 
                fl = 1;
                printf("%c",line[i]);
                
            }
            else if(((line[i] == '.')||(line[i] == '!')||(line[i] == '?'))&&(fl == 1))
            {
                fl = 0;
                printf("%s",slang[count]);
                count ++;
                if (count > 7) count = 0;  
            }
            else
            {
               printf("%c",line[i]);
            }
        }
   }
    return 0;
}