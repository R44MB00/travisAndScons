import std.stdio;
import std.conv;
import std.string;
int smallerNumb(int[] values){
    int count=1000, smaller=1000, winner = 0;
    for (int i=0;i<values.length;i++){
        int tmpcount = 0;
        for (int j=0;j<values.length;j++){
            if(values[i] == values[j])
                tmpcount++;
        }
        if (tmpcount == 1){
            if (values[i] < smaller){
                smaller = values[i];
                winner = i+1;
            }
        }
    }
    return winner;
}

void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        if (line.length>1){
            string[] numbers = split(strip(to!string(line))," ");
            int[] values;
            foreach(numb;numbers){
                values = values ~ [to!int(numb)];
            }
            int smaller = smallerNumb(values);
            writef("%d\n",smaller);
            
        }
    }
}
