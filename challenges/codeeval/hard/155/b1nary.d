import std.stdio;
import std.conv;
import std.string;
import std.ascii;
bool isInValids(char c){
    char[] valid = [':', '.' , '-', '\?',',','`'];
    for (int i=0;i<valid.length;i++)
        if (c == valid[i])
            return true;
    return false;
}
bool onlyValidChars(string text){
    char[] tmp = text.dup;
    for (int i=0;i<tmp.length;i++){
        if (isAlphaNum(tmp[i]) || tmp[i] == ' ' || isInValids(tmp[i])){
        }
        else
            return false;
    }
    return true;
}
string decodeMessage(int[] asciivalues, int n){
    string tmp ;
    for (int i=0;i<asciivalues.length;i++){
        tmp ~= to!char(asciivalues[i]-n);
    }
    return tmp;
}
void findLetter(int[] asciivalues, int size, char c){
    bool found= false;
    int scode = 0;
    for (int i=0;i<asciivalues.length-size;i++){
        int n = asciivalues[i+size-1] - to!int(c);
        for (int j=i;j<i+size-1;j++){
            if (n<0)
                break;
            if (!isAlpha(to!char(asciivalues[j]-n)))
                break;
            if (j == i+size-2)
                found = true;
        }
        if (found  == true){
            scode = n;
            string tmpdecoded = decodeMessage(asciivalues,scode);
            if (onlyValidChars(tmpdecoded)){
                writeln(tmpdecoded);
                break;
            }
            found = false;
        }
    }
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] data = split(strip(to!string(line))," | ");
        int wordsize = to!int(data[0]);
        char lastchar = to!char(data[1]);
        int[] asciivalues;
        foreach(value;split(data[2]," ")){
            asciivalues ~= [to!int(value)];
        }
        findLetter(asciivalues,wordsize,lastchar);
    }
}
