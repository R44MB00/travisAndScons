import std.stdio;
import std.conv;
import std.string;
int[] stupidSort(int[] values, int n){
    for(int i=0; i<values.length-1;i++){
        if (values[i] > values[i+1]){
            int tmp = values[i];
            values[i] = values[i+1];
            values[i+1] = tmp;
            n--;
            if (n==0)
                return values;
            else
                i=-1;
        }
    }
    return values;
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] data = split(strip(to!string(line))," | ");
        int iterations = to!int(data[1]);
        int[] values;
        foreach(numb;split(data[0]," ")){
            values~= [to!int(numb)];
        }
        values = stupidSort(values,iterations);
        writef("%d",values[0]);
        for (int i=1;i<values.length;i++){
            writef(" %d",values[i]);
        }
        writef("\n");
    }
}
