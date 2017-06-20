import std.stdio;
import std.conv;
import std.string;
import std.math;
int[] cocktail_sort(int[] values, int iterations){
    int n = 1;
    while (n<=iterations){
        for (int j=0; j<values.length-n;j++){
            if (values[j] > values[j+1]){
                int tmp = values[j];
                values[j] = values[j+1];
                values[j+1] = tmp;
            }

        }
        for (int j=to!int(values.length)-n;j>0;j--){
            if (values[j-1] > values[j]){
                int tmp = values[j-1];
                values[j-1] = values[j];
                values[j] = tmp;
            }
        }
        n+=1;
    }
    return values;
}

void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] value = split(strip(to!string(line))," | ");
        string[] first = split(value[0]," ");
        int[] numbs ;
        int iterarions = to!int(value[1]);
        foreach(numb;first)
            numbs = numbs ~ [to!int(numb)];
        numbs = cocktail_sort(numbs,iterarions);
        writef("%d",numbs[0]);
        for (int i=1;i<numbs.length;i++)
            writef(" %d",numbs[i]);
        writef("\n");
    }
}
