import std.stdio;
import std.conv;
import std.string;
bool isNumber(char n){
	string number;
	if (n == '0')
		return true;
	number ~=n;
	return isNumeric(number);
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    string[] numbers = ["-**--*--*-*--*-*--*--**-------","--*---**----*----*---***------","***-----*--**--*----****------","***-----*--**-----*-***-------","-*---*--*-****----*----*------","****-*----***-----*-***-------","-**--*----***--*--*--**-------","****----*---*---*----*--------","-**--*--*--**--*--*--**-------","-**--*--*--***----*--**-------"];
    foreach (line;range){
        if (line.length>=1){
            char[] data = strip(to!string(line)).dup;
            char[] numbstoprint;
            foreach(digit;data){
            	if (digit != '.')
            		if (isNumber(digit))
            			numbstoprint ~= [digit];
            }
            for (int i=0;i<numbers[0].length;i=i+5){
            	foreach (numb;numbstoprint){
            		char[] dig = numbers[to!int(numb)-48].dup;
            		for (int j=0;j<5;j++){
            			writef("%c",dig[i+j]);
            		}
            	}
            	writef("\n");
            }
        }
    }
}
