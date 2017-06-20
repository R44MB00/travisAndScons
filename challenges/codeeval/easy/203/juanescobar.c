#include "stdio.h"
#include "string.h"

int get_count(char line[1024], char needed[1024])
{
    int i, j, l1, l2, match, count;

    l1 = strlen(line);
    l2 = strlen(needed);

    count = 0;

    for(i = 0; i < l1; i++)
    {
        match = 0;
        for(j = 0; j < l2; j++)
        {
            if(line[i + j] == needed[j])
            {
                match++;
            }
        }

        if(match == l2)
        {
            count++;
        }
    }

    return count;
}

int main(int argc, char *argv[])
{
    FILE *file = fopen(argv[1], "r");
    char line[1024];
    while (fgets(line, 1024, file)) {
        char larrow[1024] = "<--<<", rarrow[1024] = ">>-->";
        printf("%d\n", get_count(line, larrow) + get_count(line, rarrow));
    }
}
