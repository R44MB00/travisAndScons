import std.stdio;
import std.conv;
import std.string;
int[] bubbleSort(int[] vals, long n){
	int cont=0;
	if (n> vals.length)
		n = vals.length-1;
	while (n>0){
		for(int i=0;i<vals.length-cont-1;i++){
			if (vals[i] > vals[i+1]){
				int tmp = vals[i];
				vals[i] = vals[i+1];
				vals[i+1] = tmp;
			}
		}
		n--;
		cont++;
	}
	return vals;
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] elements = split(strip(to!string(line))," | ");
        long iter = to!long(elements[1]);
        int[] values;
        foreach(numb;split(elements[0]," ")){
        	values ~= [to!int(numb)];
        }
        if (values.length > 1)
        	values = bubbleSort(values,iter);
        writef("%d",values[0]);
        if (values.length > 1)
        	for (int i=1;i<values.length;i++)
        		writef(" %d",values[i]);
        writef("\n");
    }
}
