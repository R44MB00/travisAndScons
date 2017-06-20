import std.stdio;
import std.conv;
import std.string;
import std.algorithm;
string[] swap_elements(string[] elements,int posi, int posf){
    string tmp = elements[posi].dup;
    elements[posi] = elements[posf].dup;
    elements[posf] = tmp.dup;
    return elements;
}

void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
    	string[] values = split(strip(to!string(line))," : ");
        string[] elements1 = split(values[0]," ");
        string[] elements2 = split(values[1],",");
        foreach(swap;elements2){
            string swap2 = removechars(swap," ").dup; 
            string[] positions = split(swap2,"-");
            elements1 = swap_elements(elements1,to!int(positions[0]),to!int(positions[1]));
        }
        writef("%s",elements1[0]);
        for (int i=1;i<elements1.length;i++){
            writef(" %s",elements1[i]);
        }
        writef("\n");
    }
}
