import std.stdio;
import std.conv;
import std.string;
import std.array;
import std.math;
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
string removeZeros(string data){
    char[] tmp = data.dup;
    bool start = false;
    string result;
    for(int i=0;i<tmp.length;i++){
        if (tmp[i] == '1'){
            start = true;
            result~=tmp[i];
        }
        else if(start == true)
        {
            result ~= tmp[i];
        }
    }
    if (result.length>1 || result == "1")
        return result;
    else
        return "0";
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] zeros = split(strip(to!string(line))," ");
        string binary;
        for (int i=0;i<zeros.length-1;i=i+2){
            if (zeros[i] == "0")
                binary ~= "0".replicate(to!int(zeros[i+1].length));
            else
                binary ~= "1".replicate(to!int(zeros[i+1].length));
        }
        binary = removeZeros(binary);
        writeln(bits2val(binary));
    }
}
