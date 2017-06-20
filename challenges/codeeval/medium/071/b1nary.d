import std.stdio;
import std.conv;
import std.string;
import std.algorithm;
void printArray(int[] arr){
	for (int i=0;i<arr.length;i++){
		writef(",%d",arr[i]);
	}
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] elements = split(strip(to!string(line)),";");
        int size = to!int(elements[1]);
        int[] values;
        foreach(data;split(elements[0],",")){
        	values ~= [to!int(data)];
        }
        for (int i=0;i<values.length;i+=size){
        	if (i+size > values.length){
                //writeln(" ",i+size," ",values.length);
        		printArray(values[i..$]);
            }
        	else{
        		int[] tmp2 = values[i..i+size];
        		tmp2.sort!("a > b");
        		if (i==0){
        			writef("%d",tmp2[0]);
        			tmp2 = tmp2[1..$];
        		}
        		printArray(tmp2);
        	}
        }
        writef("\n");
    }
}
