import std.stdio;
import std.conv;
import std.string;
import std.algorithm;
bool checkCols(int[][] grid){
	int[] tmp ;
	for (int i=1;i<=grid.length;i++)
		tmp ~= [i];

	for (int j=0;j<grid.length;j++){
		int[] tmpvalues;
		for (int i=0;i<grid.length;i++){
			tmpvalues ~= [grid[i][j]];
		}
		sort(tmpvalues);
		if (tmpvalues != tmp)
			return false;
	}
	return true;
}
bool checkRows(int[][] grid){
	int[] tmp ;
	for (int i=1;i<=grid.length;i++)
		tmp ~= [i];

	for (int i=0;i<grid.length;i++){
		int[] tmpvalues;
		for (int j=0;j<grid.length;j++){
			tmpvalues ~= [grid[i][j]];
		}
		sort(tmpvalues);
		if (tmpvalues != tmp)
			return false;
	}
	return true;
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] data = split(strip(to!string(line)),";");
        int size = to!int(data[0]);
        int[][] grid = new int[][](size,size);
        int[] values;
        foreach(numb;split(data[1],",")){
        	values ~= [to!int(numb)];
        }
        int tmpcnt=0;
        for (int i=0;i<size;i++){
        	for (int j=0;j<size;j++){
        		grid[i][j] = values[tmpcnt];
        		tmpcnt++;
        	}
        }
        if (checkRows(grid) && checkCols(grid))
        	writeln("True");
        else
        	writeln("False");
    }
}
