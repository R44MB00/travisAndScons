import std.stdio;
import std.conv;
import std.string;
int findExit(char[] tmp,int i){
	int count=1;
	for (int j=i+1;j<tmp.length;j++){
		if (tmp[j] == '[')
			count++;
		if (tmp[j] == ']')
			count--;
		if (count == 0)
			return j;
	}
	return to!int(tmp.length)-1;
}
void loopBrck(char[] tmp, ref int[] result, ref int ptr,ref int i, int initial){
	int exit = findExit(tmp,initial);
	while (i != exit){
		i++;
		if (tmp[i] == '>'){
			if (ptr+1 == result.length)
				result ~= [0];
			ptr++;
		}
		if (tmp[i] == '<'){
			if (ptr-1 < 0){
				result = [0] ~ result;
				ptr=1;
			}
			ptr--;
		}
		if (tmp[i] == '+')
			result[ptr]++;
		if (tmp[i] == '-')
			result[ptr]--;
		if (tmp[i] == '.')
			writef("%c",to!char(result[ptr]));
		if (tmp[i] == '['){
			if (result[ptr] == 0)
				i = findExit(tmp,i);
			else{
				loopBrck(tmp,result,ptr,i,i);
			}
		}
		if (i == exit)
			if (result[ptr] != 0)
				i = initial;
	}
	i = exit;
}
int[] compileBf(string instruction){
	char[] tmp = instruction.dup;
	int[] result = [0];
	int ptr = 0;
	for (int i=0;i<tmp.length;i++){
		if (tmp[i] == '>'){
			if (ptr+1 == result.length)
				result ~= [0];
			ptr++;
		}
		if (tmp[i] == '<'){
			if (ptr-1 < 0){
				result = [0] ~ result;
				ptr=1;
			}
			ptr--;
		}
		if (tmp[i] == '+')
			result[ptr]++;
		if (tmp[i] == '-')
			result[ptr]--;
		if (tmp[i] == '.')
			writef("%c",to!char(result[ptr]));
		if (tmp[i] == '[')
			if(result[ptr] == 0)
				i = findExit(tmp,i);
			else {
				loopBrck(tmp,result,ptr,i,i);
			}
	}
	return result;
}
void main(string[] args)
{
	auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
    	string data = strip(to!string(line));
    	int[] result = compileBf(data);
    	writef("\n");
    }
}
