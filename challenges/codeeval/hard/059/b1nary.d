import std.stdio;
import std.conv;
import std.string;
import std.algorithm;
int findChar(char[][] values, char m){
	for(int i=0;i<values.length;i++){
		if (values[i][0] == m)
			return i;
	}
	return -1;
}
void getCombinations(char[][] values,char[] message, int i, string text, ref string[] result){
	if (i < message.length){
		int idx = findChar(values,message[i]);
		if (values[idx].length > 1){
			for (int j=1;j<values[idx].length;j++){
				string tmp = text ~ values[idx][j];
				getCombinations(values,message, i+1, tmp,result);
			}
		}
		else {
			text ~= values[idx][1];
			getCombinations(values,message,i+1,text,result);
		}
	}
	else
		result ~= [text];
}

void main(string[] args)
{
	char[][] values = [['0','0'],['1','1'],['2','a','b','c'],['3','d','e','f'],['4','g','h','i'],['5','j','k','l'],['6','m','n','o'],['7','p','q','r','s'],['8','t','u','v'],['9','w','x','y','z']];
	auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
    	char[] data = strip(to!string(line)).dup;
    	string[] result;
    	getCombinations(values,data,0,"",result);
    	writef("%s",result[0]);
    	for (int i=1;i<result.length;i++){
    		writef(",%s",result[i]);
    	}
    	writef("\n");
    }
}
