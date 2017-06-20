import std.stdio;
import std.conv;
import std.string;
string[][] countMines(string[][] matrix, int i,int j){
	if (matrix[i][j] == "*")
		return matrix;
	int count=0;
	if ((i-1 >= 0) && (j-1 >= 0)){
		if (matrix[i-1][j-1] == "*")
			count++;
	}
	if (i-1 >= 0){
		if (matrix[i-1][j] == "*")
			count++;
	}
	if ((j+1 < matrix[0].length) && (i-1 >= 0)){
		if (matrix[i-1][j+1] == "*")
			count++;
	}
	if (j+1 < matrix[0].length){
		if (matrix[i][j+1] == "*")
			count++;
	}
	if ((i+1 < matrix.length) && (j+1 < matrix[0].length)){
		if (matrix[i+1][j+1] == "*")
			count++;
	}
	if (i+1 < matrix.length){
		if (matrix[i+1][j] == "*")
			count++;
	}
	if ((i+1 < matrix.length) && (j-1 >= 0)){
		if (matrix[i+1][j-1] == "*")
			count++;
	}
	if (j-1 >= 0){
		if (matrix[i][j-1] == "*")
			count++;
	}
	matrix[i][j] = to!string(count,10);
	return matrix;
}
string[][] fillBoard(string[][] matrix){
	for (int i=0;i<matrix.length;i++){
		for (int j=0;j<matrix[0].length;j++){
			matrix = countMines(matrix,i,j);
		}
	}
	return matrix;
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        if (line.length>1){
        	string[] data = split(strip(to!string(line)),";");
        	string[] size = split(data[0],",");
        	char[] values = data[1].dup;
        	string[][] matrix = new string[][] (to!int(size[0]),to!int(size[1]));
        	int cont = 0;
        	for (int i=0; i<to!int(size[0]);i++){
        		for (int j=0;j<to!int(size[1]);j++){
        			matrix[i][j] = to!string(values[cont]);
        			cont++;
        		}
        	}
        	matrix = fillBoard(matrix);
        	for (int i=0;i<matrix.length;i++)
        		for (int j=0;j<matrix[0].length;j++)
        			writef("%s",matrix[i][j]);
        	writef("\n");
        }
    }
}
