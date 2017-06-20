import std.stdio;
import std.conv;
import std.string;
import std.math;
bool isinCurrent(char c, string current){
	char[] tmp = current.dup;
	for (int i=0; i<tmp.length; i++){
		if (c == tmp[i])
			return true;
	}
	return false;
}
string longest(char[][] matrix, int i, int j, string current, ref string longst){
	string tmp = current;
	if (i-1 >= 0){
		if (!isinCurrent(matrix[i-1][j],current)){
			string tmp2 = tmp ~ matrix[i-1][j];
			tmp2 = longest(matrix,i-1,j,tmp2,longst);
			if (tmp2.length > longst.length)
				longst = tmp2;
		}
	}
	if (j+1 < matrix[0].length){
		if (!isinCurrent(matrix[i][j+1],current)){
			string tmp2 = tmp ~ matrix[i][j+1];
			tmp2 = longest(matrix,i,j+1,tmp2,longst);
			if (tmp.length > longst.length)
				longst = tmp2;
		}
	}
	if (i+1 < matrix.length){
		if (!isinCurrent(matrix[i+1][j],current)){
			string tmp2 = tmp ~ matrix[i+1][j];
			tmp2 = longest(matrix,i+1,j,tmp2,longst);
			if (tmp2.length > longst.length)
				longst = tmp2;
		}
	}
	if (j-1 >= 0){
		if (!isinCurrent(matrix[i][j-1],current)){
			string tmp2 = tmp ~ matrix[i][j-1];
			tmp2 = longest(matrix,i,j-1,tmp2,longst);
			if (tmp2.length > longst.length)
				longst = tmp2;
		}
	}
	return tmp;
}


void main(string[] args)
{
	auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
    	string data = strip(to!string(line));
    	char[] values = data.dup;
    	int size = to!int(sqrt(to!float(values.length)));
    	char[][] matrix = new char[][] (size,size);
    	int count = 0;
    	for (int i=0;i<size;i++){
    		for (int j=0;j<size;j++){
    			matrix[i][j] = values[count];
    			count++;
    		}
    	}
    	string longst = "";
    	for (int i=0;i<size;i++){
    		for (int j=0;j<size;j++){
    			string tmpinit = "" ~ matrix[i][j];
    			string test = longest(matrix,i,j,tmpinit,longst);
    		}
    	}
    	if (longst.length == 0)
    		writeln(1);
    	else
    	    writeln(longst.length);
    }
}
