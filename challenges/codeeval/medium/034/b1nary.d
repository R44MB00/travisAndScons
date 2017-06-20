import std.stdio;
import std.conv;
import std.string;
int[][] getPairs(int[] numbs, int sum){
	int[][] pairs;
	for(int i=0;i<numbs.length-1;i++){
		for (int j=i+1;j<numbs.length;j++){
			if (numbs[i]+numbs[j] == sum)
				pairs ~= [[numbs[i],numbs[j]]];
		}
	}
	return pairs;
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
    	string[] data = split(strip(to!string(line)),";");
    	string[] values = split(data[0],",");
    	int sum = to!int(data[1]);
    	int[] numbs;
    	foreach(v;values){
    		numbs ~= [to!int(v)];
    	}
    	int[][] result = getPairs(numbs,sum);
    	if (result.length  > 0){
    		writef("%s,%s",result[0][0],result[0][1]);
    		for (int i=1;i<result.length;i++){
    			writef(";%s,%s",result[i][0],result[i][1]);
    		}
    	}
    	else
    		writef("NULL");
    	writef("\n");
    }
}
