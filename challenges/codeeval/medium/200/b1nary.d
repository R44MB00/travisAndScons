import std.stdio;
import std.conv;
import std.string;
import std.algorithm;
bool isSortedrow(int[] row){
	int[] tmpsorted = row.dup;
	sort(tmpsorted);
	return row == tmpsorted;
}

int[][] swapColumn(int[][] matrix, int init, int end){
	int[][] result = matrix.dup;
	for(int j=0;j<matrix.length;j++){
		int tmp = result[j][init];
		result[j][init] = result[j][end];
		result[j][end] = tmp;
	}
	return result;
}

int[][] sortMatrix(int[][] matrix){
	while (!isSortedrow(matrix[0])){
		for (int i=0;i<matrix.length-1;i++){
			int tmp=0;
			for (int j=i+1;j<matrix.length;j++){
				if (matrix[tmp][i] == matrix[tmp][j]){
					tmp++;
					j--;
				}else if (matrix[tmp][i] > matrix[tmp][j]){
					matrix = swapColumn(matrix,i,j);
					tmp = 0;
				}else{
					tmp = 0;
				}
			}
		}
	}
	return matrix;
}
void printMatrix(int[][] matrix){
	for (int i=0;i<matrix.length;i++){
		writef("%d",matrix[i][0]);
		for (int j=1;j<matrix.length;j++)
			writef(" %d",matrix[i][j]);
		if (i != matrix.length-1)
			writef(" | ");
	}
	writef("\n");
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        if (line.length>1){
        	string[] data = split(strip(to!string(line))," | ");
        	int[][] matrix = new int[][] (data.length,data.length);
        	for (int i=0;i<data.length;i++){
        		string[] tmprow = split(data[i]," ");
        		for (int j=0;j<data.length;j++){
        			matrix[i][j] = to!int(tmprow[j]);
        		}
        	}
        	matrix = sortMatrix(matrix);
        	printMatrix(matrix);
        }
    }
}
