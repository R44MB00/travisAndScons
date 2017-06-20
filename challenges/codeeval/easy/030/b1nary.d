import std.stdio;
import std.conv;
import std.string;
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] data = split(strip(to!string(line)),";");
        string[] array1 = split(data[0],",");
        string[] array2 = split(data[1],",");
        bool intersec = false;
        for(int i=0;i<array1.length;i++){
        	for(int j=0;j<array2.length;j++){
        		if (array1[i] == array2[j]){
        			if (intersec == true)
        				writef(",%s",array1[i]);
        			else
        				writef("%s",array1[i]);
        			intersec = true;
        		}
        	}
        }
        writef("\n");
    }
}
