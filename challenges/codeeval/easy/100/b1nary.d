import std.stdio;
import std.conv;
import std.string;

void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        int value = to!int(strip(to!string(line)));
        if ( value%2 == 1)
            writef("0");
        else
            writef("1");
        writef("\n");
    }
}
