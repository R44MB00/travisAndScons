#include <stdio.h>
#include <string.h>

int main(int argc, const char * argv[]) {
   
    FILE *file = fopen(argv[1], "r");
    char line[1024];

    while (fgets(line, 1024, file))
    {
        
        short len = strlen(line);
        short i = 0;
        short j = 0;
        char ans;
       
        for (i = 0; i <len -1; i++)
        {
            short flag = 1;
            
            for (j = 0; j < len -1;j++)
            {
                if (j != i){    
                    if (line[i]==line[j]) flag = 0;
                }
            }

            if (flag == 1){
               ans = line[i];
               break; 
            } 
            
        }
        printf("%c\n",ans);    
  }
    return 0;
}