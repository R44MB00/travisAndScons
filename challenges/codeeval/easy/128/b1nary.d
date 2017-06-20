import std.stdio;
import std.conv;
import std.string;

void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] values = split(strip(to!string(line))," ");
        for (int i=0;i<values.length;i++){
            int tmpcount = 0;
            int value = 0;
            for(int j=i;j<values.length;j++){
                if (values[i]!=values[j]){
                    i=j-1;
                    break;
                }
                else {
                    tmpcount++;
                    value = to!int(values[i]);
                }
                if (j == to!int(values.length)-1)
                    i = j;
            }
            writef("%d %d ",tmpcount,value);
        }
        writef("\n");
    }
}
