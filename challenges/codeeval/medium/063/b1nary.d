import std.stdio;
import std.conv;
import std.string;
bool isPrime(int a){
	int i;
	for (i=2;i<=a-1;i++){ 
		if (a%i==0)
			return false;
	}
	if (i==a)
        return true;
    return false;
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
    	string[] numbs = split(strip(to!string(line)),",");
        int n = to!int(numbs[0]);
        int m = to!int(numbs[1]);
    	int result;
    	for (int i=n;i<=m;i++){
    		if (isPrime(i))
    			result++;
    	}
    	writeln(result);
    }
}
