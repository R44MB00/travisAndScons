import std.stdio;
import std.conv;
import std.string;
int[][] sumValues(int[][] matrix, string direction){
    if (direction == "RIGHT"){
        for(int i =0;i<matrix.length;i++){
            for(int j=0;j<matrix.length-1;j++){
                if (matrix[i][j+1] == 0 && matrix[i][j] != 0){
                    matrix[i][j+1] = matrix[i][j];
                    matrix[i][j] = 0;
                    j = -1;
                }
            }
            for(int j=to!int(matrix.length)-1;j>0;j--){
                if (matrix[i][j] == matrix[i][j-1] && matrix[i][j] != 0){
                    matrix[i][j] = matrix[i][j]*2;
                    matrix[i][j-1] = 0;
                }
            }
            for(int j=0;j<matrix.length-1;j++){
                if (matrix[i][j+1] == 0 && matrix[i][j] != 0){
                    matrix[i][j+1] = matrix[i][j];
                    matrix[i][j] = 0;
                    j = -1;
                }
            }
        }
    }
    if (direction == "LEFT"){
        for(int i =0;i<matrix.length;i++){
            for(int j=to!int(matrix.length)-1;j>0;j--){
                if (matrix[i][j-1] == 0 && matrix[i][j] != 0){
                    matrix[i][j-1] = matrix[i][j];
                    matrix[i][j] = 0;
                    j=to!int(matrix.length);
                }
            }
            for(int j=0;j<to!int(matrix.length)-1;j++){
                if (matrix[i][j] == matrix[i][j+1] && matrix[i][j] != 0){
                    matrix[i][j] = matrix[i][j]*2;
                    matrix[i][j+1] = 0;
                }
            }
            for(int j=to!int(matrix.length)-1;j>0;j--){
                if (matrix[i][j-1] == 0 && matrix[i][j] != 0){
                    matrix[i][j-1] = matrix[i][j];
                    matrix[i][j] = 0;
                    j=to!int(matrix.length);
                }
            }
        }
    }
    if (direction == "UP"){
        for(int j =0;j<matrix.length;j++){
            for(int i=to!int(matrix.length)-1;i>0;i--){
                if (matrix[i-1][j] == 0 && matrix[i][j] != 0){
                    matrix[i-1][j] = matrix[i][j];
                    matrix[i][j] = 0;
                    i=to!int(matrix.length);
                }
            }
            for(int i=0;i<to!int(matrix.length)-1;i++){
                if (matrix[i][j] == matrix[i+1][j] && matrix[i][j] != 0){
                    matrix[i][j] = matrix[i][j]*2;
                    matrix[i+1][j] = 0;
                }
            }
            for(int i=to!int(matrix.length)-1;i>0;i--){
                if (matrix[i-1][j] == 0 && matrix[i][j] != 0){
                    matrix[i-1][j] = matrix[i][j];
                    matrix[i][j] = 0;
                    i=to!int(matrix.length);
                }
            }
        }
    }
    if (direction == "DOWN"){
        for(int j =0;j<matrix.length;j++){
            for(int i=0;i<matrix.length-1;i++){
                if (matrix[i+1][j] == 0 && matrix[i][j] != 0){
                    matrix[i+1][j] = matrix[i][j];
                    matrix[i][j] = 0;
                    i=-1;
                }
            }
            for(int i=to!int(matrix.length)-1;i>0;i--){
                if (matrix[i][j] == matrix[i-1][j] && matrix[i][j] != 0){
                    matrix[i][j] = matrix[i][j]*2;
                    matrix[i-1][j] = 0;
                }
            }
            for(int i=0;i<matrix.length-1;i++){
                if (matrix[i+1][j] == 0 && matrix[i][j] != 0){
                    matrix[i+1][j] = matrix[i][j];
                    matrix[i][j] = 0;
                    i=-1;
                }
            }
        }
    }
    return matrix;
}

void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] data = split(strip(to!string(line)),"; ");
        string direction = data[0];
        int size = to!int(data[1]);
        string[] grid = split(data[2],"|");
        int[][] matrix = new int[][](size,size);
        for(int i=0;i<grid.length;i++){
            string[] tmp = split(grid[i]," ");
            for(int j=0;j<tmp.length;j++){
                matrix[i][j] = to!int(tmp[j]);
            }
        }
        matrix = sumValues(matrix,direction);
        for (int i=0;i<matrix.length;i++){
            writef("%d",matrix[i][0]);
            for (int j=1;j<matrix.length;j++){
                writef(" %d",matrix[i][j]);
            }
            if (i != matrix.length-1)
                writef("|");
        }
        writef("\n");
    }
}
