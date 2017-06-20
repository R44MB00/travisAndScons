import std.stdio;
import std.array;
import std.conv;
import std.string;
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        if (line.length>1){
            string[] values = split(strip(to!string(line)),",");
            char[] string1 = values[0].dup;
            char[] string2 = values[1].dup;
            if (string2.length > string1.length)
                writef("0\n");
            else{
                int result = 1;
                for (int i = 0; i< string2.length;i++){
                    if (string1[string1.length-string2.length+i] != string2[i])
                        result = 0;
                }
                writef("%d\n",result);
            }
        }
    }
}
