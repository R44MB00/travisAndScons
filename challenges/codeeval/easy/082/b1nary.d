import std.stdio;
import std.conv;
import std.string;
import std.math;
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string data = strip(to!string(line));
        char[] number = data.dup;
        int p = to!int(number.length);
        int sum = 0;
        for (int i=0;i<p;i++){
        	sum+= pow(to!int(number[i])-48,p);
        }
        if (sum == to!int(data))
        	writeln("True");
        else
        	writeln("False");
    }
}
