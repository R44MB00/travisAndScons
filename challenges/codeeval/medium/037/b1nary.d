import std.stdio;
import std.conv;
import std.string;
import std.algorithm;
import std.ascii;
char char2Lower(char c){
    int tmp = to!int(c);
    if (tmp >= 97)
        return c;
    return to!char(tmp+32);
}
char[] sortChars(char[] arr){
    int[] tmp;
    for (int i=0;i<arr.length;i++){
        tmp ~= [to!int(arr[i])];
    }
    char[] ret;
    sort(tmp);
    for (int i=0;i<tmp.length;i++){
        ret ~= [to!char(tmp[i])];
    }
    return ret;
}
bool isInArray(char[] array, char c){
    for (int i=0;i<array.length;i++){
        if(array[i] == c)
            return true;
    }
    return false;
}
bool isPangram(string txt){
    char[] tmp = txt.dup;
    char[] letters;
    char[] pangram = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
    for (int i=0;i<tmp.length;i++){
        if (isAlpha(tmp[i])){
            char c = char2Lower(tmp[i]);
            if (!isInArray(letters,c))
                letters ~= [c];
        }
    }
    letters = sortChars(letters);
    if (letters == pangram)
        return true;
    else{
        for(int i=0;i<pangram.length;i++){
            if (!isInArray(letters,pangram[i]))
                writef("%c",pangram[i]);
        }
        return false;
    }
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string text = strip(to!string(line));
        if(isPangram(text))
            writeln("NULL");
        else
            writef("\n");
    }
}
