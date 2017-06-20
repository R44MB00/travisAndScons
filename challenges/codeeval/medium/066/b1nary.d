import std.stdio;
import std.conv;
import std.string;
string removelast(string text){
	char[] tmp = text.dup;
	tmp = tmp[0..$-1];
	return to!string(tmp);
}
void printPascal(int[][] pascal, int level){
	string result;
	for (int i=0;i<level;i++){
		for (int j=0;j<pascal[i].length;j++){
			result ~= to!string(pascal[i][j])~" ";
		}
	}
	writef("%s\n",removelast(result));
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
    	int levels = to!int(strip(to!string(line)));
    	int[][] pascal = [[1],[1,1]];
    	if (levels > 2){
    		for (int i=2;i<levels;i++){
    			int[] tmp = [1];
    			for (int j=0;j<pascal[i-1].length-1;j++){
    				tmp ~= [pascal[i-1][j]+pascal[i-1][j+1]];
    			}
    			tmp ~= [1];
    			pascal ~= [tmp];
    		}
    	}
    	printPascal(pascal,levels);
    }
}
