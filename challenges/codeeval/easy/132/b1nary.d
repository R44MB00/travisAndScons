import std.stdio;
import std.conv;
import std.string;
void majorElement(int[] values){
    int count=0, major=0, winner = 0;
    for (int i=0;i<values.length;i++){
        int tmpcount = 0;
        for (int j=0;j<values.length;j++){
            if(values[i] == values[j])
                tmpcount++;
        }
        if (tmpcount >= values.length/2 ){
            major = values[i];
            winner = 1;
        }
    }
    if (winner > 0)
        writef("%d\n",major);
    else
        writef("None\n");
}

void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        if (line.length>1){
            string[] numbers = split(strip(to!string(line)),",");
            int[] values;
            foreach(numb;numbers){
                values = values ~ [to!int(numb)];
            }
            majorElement(values);
        }
    }
}
