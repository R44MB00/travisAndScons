import std.stdio;
import std.conv;
import std.string;
uint chr2bit(char c){
    if (c == '0')
        return 0;
    else
        return 1;
}
char bit2chr(uint b){
    if (b == 1)
        return '1';
    else
        return '0';
}
uint bits2val(string binary){
    char[] bits = binary.dup;
    uint val= 0;
    for (int i=0; i<bits.length; i++){
        if (bits[i] == '1') 
            val = (val << 1) | 1;
        else if (bits[i] == '0' ) 
            val <<= 1;
        else 
            break;
    }
    return val;
}
string gcbin2bin(string gcnumb){
    char[] tmp = gcnumb.dup;
    char[] result ;
    result ~= [tmp[0]];
    for (int i=1;i<tmp.length;i++){
        result ~= [bit2chr(chr2bit(result[i-1]) ^ chr2bit(tmp[i]))];
    }
    string tmpresult;
    foreach(c;result)
        tmpresult~= c;
    return tmpresult;
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] gcnumbs = split(strip(to!string(line))," | ");
        string[] binarynumbs;
        foreach (numbs;gcnumbs){
            binarynumbs ~= [gcbin2bin(numbs)];
        }
        uint[] result;
        foreach (numb;binarynumbs){
            result ~= [bits2val(numb)];
        }
        writef("%d",result[0]);
        for (int i=1;i<result.length;i++){
            writef(" | %d",result[i]);
        }
        writef("\n");
    }
}
