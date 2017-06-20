#include <stdio.h>
#include <string.h>

int main(int argc, const char * argv[]) {
      
    FILE *file = fopen(argv[1], "r");
    char line[1024];

    while (fgets(line, 1024, file))
    {
        char *p =line;
        int len = (strlen(line)/2)-1;
        int nums[len];
        int i = 0;
        int j = 0;

       while (*p)
        {
            if ((p[0] == '-' && isdigit(p[1]))|| isdigit(p[0]))
            { 
                nums[i] = strtol(p, &p, 10); 
                i++;
            }
            else p++;
        }

        len = i;       
        int iter = nums[len-1];
            
        for (i = 1; i <= iter; i++)
        {
            j = 0;
            while (j+1 < len - 1)
            {
                if (nums[j] > nums[j+1]){
                    int flag = nums[j];
                    nums[j] = nums[j+1];
                    nums[j+1] = flag;
                    break;
                } 
                j++;    
            }
          
        }    

        for (i = 0;i < len-1; i++) printf("%d ",nums[i]);
        printf("\n");    
    }
    return 0;
}