import std.stdio;
import std.conv;
import std.string;
string removelast(string text){
	char[] tmp = text.dup;
	tmp = tmp[0..$-1];
	return to!string(tmp);
}
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
    	int n = to!int(strip(to!string(line)));
    	string result;
    	for (int i=0;i<n;i++){
    		if (isPrime(i))
    			result ~= to!string(i)~",";
    	}
    	writeln(removelast(result));
    }
}
