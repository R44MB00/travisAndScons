import std.stdio;
import std.conv;
import std.string;
import std.algorithm;

int countSort(int[] numbers){
    int count = 0;
    int[] sorted = numbers.dup;
    sort(sorted);
    int j = to!int(to!int(numbers.length)/1.25);
    while(numbers != sorted){
        for(int i=0;i+j<numbers.length;i++){
            if (numbers[i] > numbers[i+j]){
                int tmpnumb = numbers[i+j];
                numbers[i+j] = numbers[i];
                numbers[i] = tmpnumb;
            }
        }
        j = to!int(j/1.25);
        count++;
    }
    return count;
}

void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] data = split(strip(to!string(line))," ");
        int[] elements;
        foreach(numb;data){
            elements ~= [to!int(numb)];
        }
        writeln(countSort(elements));
    }
}
