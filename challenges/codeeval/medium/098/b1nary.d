import std.stdio;
import std.conv;
import std.string;
string parseData(string text, string type){
	char[] tmp = text.dup;
	if (type == "center"){
		tmp = tmp[9..$-1];
	}
	if (type == "radius"){
		tmp = tmp[8..$];
	}
	if (type == "point"){
		tmp = tmp[8..$-1];
	}
	return to!string(tmp);
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
    	string[] data = split(strip(to!string(line)),"; ");
    	string[] tmpcenter = split(parseData(data[0],"center"),", ");
    	float radius = to!float(parseData(data[1],"radius"));
    	string[] tmppoint = split(parseData(data[2],"point"),", ");
    	float[] center,point;
    	for (int i=0;i<2;i++){
    		center ~= [to!float(tmpcenter[i])];
    		point ~= [to!float(tmppoint[i])];
    	}
    	bool result = false;
    	if ((point[0] <= center[0]+radius) && (point[0] >= center[0]-radius) && (point[1] <= center[1]+radius) && (point[1] >= center[1]-radius))
    		result = true;
       	writeln(result);
    }
}
