import std.stdio;
import std.conv;
import std.string;
import std.ascii;
import std.math;
string[] popSymbol(string[] symbols){
	symbols = symbols[0..$-1];
	return symbols;
}
int[] shiftNumbs(int[] numbers,int result){
	numbers = numbers[1..$];
	numbers[0] = result;
	return numbers;
}
string[] getSymbols(string[] data, int end){
	string[] result;
	for (int i=0; i<end;i++){
		result ~= [data[i]];
	}
	return result;
}
int[] getNumbers(string[] data, int start){
	int[] result;
	for (int i=start; i<data.length;i++){
		result ~= [to!int(data[i])];
	}
	return result;
}
bool isNumb(string s){
	char[] tmp = s.dup;
	return isDigit(tmp[0]);
}
int doMath(string operator, int x, int y){
	if (operator == "+")
		return x+y;
	if (operator == "-")
		return x-y;
	if (operator == "*")
		return x*y;
	return to!int(ceil(to!float(x) / to!float(y)));

}
int getResult(int[] numbers, string[] symbols){
	while (symbols.length > 0){
		string operator = symbols[symbols.length-1];
		int x,y,result;
		x = numbers[0];
		y = numbers[1];
		result = doMath(operator,x,y);
		symbols = popSymbol(symbols);
		numbers = shiftNumbs(numbers,result);
	}
	return numbers[0];
}
void main(string[] args)
{
	auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
    	string[] data = split(strip(to!string(line))," ");
    	int bp;
    	for (int i=0;i<data.length;i++){
    		if (isNumb(data[i])){
    			bp = i;
    			break;
    		}
    	}
    	int[] numbers = getNumbers(data,bp);
    	string[] symbols = getSymbols(data,bp);
    	writeln(getResult(numbers,symbols));
    }
}
