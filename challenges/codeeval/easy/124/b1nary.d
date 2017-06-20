import std.stdio;
import std.array;
import std.conv;
import std.string;
import std.algorithm;
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
    	string[] values = split(strip(to!string(line)),";");
        int[] distances;
        foreach(distance;values){
            string[] splitvalues = split(distance,",");
            if (splitvalues.length >1)
                distances = distances ~ [to!int(splitvalues[1])];
        }
        sort(distances);
        writef("%d",distances[0]);
        for (int i = 1;i<distances.length;i++){
            writef(",%d",distances[i]-distances[i-1]);
        }
        writef("\n");
    	}
}
