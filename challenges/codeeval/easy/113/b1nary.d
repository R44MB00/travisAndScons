import std.stdio;
import std.conv;
import std.string;
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
    	string[] values = split(strip(to!string(line))," | ");
        string[] elements1 = split(values[0]," ");
        string[] elements2 = split(values[1]," ");
        int[] result;
        for (int i=0;i<elements1.length;i++){
            int x = to!int(elements1[i]);
            int y = to!int(elements2[i]);
            result = result ~ [(x*y)];
        }
        writef("%d",result[0]);
        for (int i=1;i<result.length;i++){
            writef(" %d",result[i]);
        }
        writef("\n");
    }
}
