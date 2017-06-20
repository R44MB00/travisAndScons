import std.stdio;
import std.conv;
import std.string;

void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        if (line.length>1){
            string[] numbers = split(strip(to!string(line)),",");
            writef("%s",numbers[0]);
            for(int i=1;i<numbers.length;i++){
                if (numbers[i] != numbers[i-1])
                    writef(",%s",numbers[i]);
            }
            writef("\n");
        }
    }
}
