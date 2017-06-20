import std.stdio;
import std.conv;
import std.string;
char[] arrayPop(char[] number){
	number = number[0..$-1];
	return number;
}
char[] arrayShift(char[] number){
	number = number[1..$];
	return number;
}
bool isPalindrom(string number){
	char[] tmp = number.dup;
	while (tmp.length>0){
		if (tmp.length == 1){
			return true;
		}
		else{
			char first = tmp[0];
			char last = tmp[tmp.length-1];
			tmp = arrayPop(tmp);
			tmp = arrayShift(tmp);
			if (first != last)
				return false;
		}
	}
	return true;
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        if (line.length>1){
            string[] data = split(strip(to!string(line))," ");
            int min = to!int(data[0]);
            int max = to!int(data[1]);
            int contpalind = 0;
            int cont = 0;
            for (int i = min; i<= max; i++){
            	for (int j = max; j>=i; j--){
            		for (int k=i; k<=j; k++){
            			string tmp = to!string(k,10);
            			if (isPalindrom(tmp))
            				contpalind++;
            		}
            		if (contpalind % 2 == 0)
            			cont++;
            		contpalind = 0;
            	}
            }
            writeln(cont);
        }
    }
}
