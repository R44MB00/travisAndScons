import std.stdio;
import std.conv;
import std.string;
void main(string[] args)
{
	auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
    	string[] data = split(strip(to!string(line)),"| ");
    	char[] letters = data[0].dup;
    	int[] values;
    	foreach(v;split(data[1]," ")){
    		values ~= [to!int(v)];
    	}
    	foreach(i;values){
    		writef("%c",letters[i-1]);
    	}
    	writef("\n");
    }
}
