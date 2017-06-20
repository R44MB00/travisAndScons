import std.stdio;
import std.conv;
import std.string;
import std.math;
char[] rotate(char[] str, int i){
	char[] tmp = str.dup;
	for (int j=0; j<str.length;j++){
		if (j+i<str.length)
			tmp[j+i] = str[j];
		else 
			tmp[j+i-str.length] = str[j];
	}
	return tmp;

}

void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] value = split(strip(to!string(line)),",");
        char[] initial = value[0].dup;
        char[] rotated = value[1].dup;
        string sol = "False";
        for (int i=1;i<initial.length;i++){
        	char[] tmprote = rotate(initial,i);
        	if (to!string(tmprote) == to!string(rotated)){
        		sol = "True";
        		break;
        	}
        }
        writeln(sol);
    }
}
