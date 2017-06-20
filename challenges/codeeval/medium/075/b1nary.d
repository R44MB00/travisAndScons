import std.stdio;
import std.conv;
import std.string;
int[] removeNumber(int[] numbers, int pos, int current){
    if (numbers.length > 1){
        int p;
        if (current+pos>=numbers.length)
            p = current+pos-to!int(numbers.length);
        else
            p = current+pos;
        while (p >= numbers.length){
            p = p-to!int(numbers.length);
        }
        writef("%d ",numbers[p]);
        numbers = numbers[0..p] ~ numbers[p+1..$];
        numbers = removeNumber(numbers,pos,p);        
    }
    return numbers;
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] data = split(strip(to!string(line)),",");
        int size = to!int(data[0]);
        int[] numbers;
        for (int i=0;i<size;i++){
            numbers ~= [i];
        }
        int pos = to!int(data[1]) - 1;
        numbers = removeNumber(numbers,pos,0);
        writef("%d\n",numbers[0]);
    }
}
