import std.stdio;
import std.conv;
import std.string;
import std.math;
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string value = strip(to!string(line));
        int total = to!int(value);
        int n = 0;
        while (total>0){
        	if (total>=5){
        		n+= total/5;
        		total= total - (total/5)*5;
        	}
        	else if (total>=3){
        		n+= total/3;
        		total= total - (total/3)*3;
        	}
        	else if (total>=1){
        		n+= total/1;
        		total= total - (total/1)*1;
        	}
        }
        writef("%d\n",n);
    }
}
