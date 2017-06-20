import std.stdio;
import std.conv;
import std.string;
import std.ascii;
string tolowerCase(string url){
	char[] tmp = url.dup;
	int count = 0;
	int index = 0;
	for (int i=0; i<tmp.length; i++){
		if (tmp[i] == '/')
			count++;
		if (count == 3){
			index = i;
			break;
		}
		if (i == tmp.length-1)
			index = i;
	}
	for (int i=0;i<index;i++){
		tmp[i] = std.ascii.toLower(tmp[i]);
	}
	return to!string(tmp);
}
string removePorts(string url){
	char[] tmp = url.dup;
	string result = "";
	for(int i=0;i<tmp.length;i++){
		if (tmp[i] == ':'){
			if (i+2 < tmp.length){
				if ((tmp[i+1] == '8' && tmp[i+2] == '0' && !isDigit(tmp[i+3])) ||  !isDigit(tmp[i+1])){
					if (tmp[i+1] == '8' && tmp[i+2] == '0'){
						i = i + 2;
					}
				}
			}
		}
		else
			result ~= tmp[i];
	}
	return result;
}
string parseURL(string url){
	char[] tmp = url.dup;
	string result = "";
	for (int i=0;i<tmp.length;i++){
		if (tmp[i] == '%' && isDigit(tmp[i+1]) && isDigit(tmp[i+1])){
			string tmphex = "";
			tmphex ~= tmp[i+1];
			tmphex ~= tmp[i+2];
			int hexvalue = to!int(tmphex,16);
			char hex2ascii = to!char(hexvalue);
			result ~= hex2ascii;
			i=i+2;
		}
		else
			result ~=tmp[i];
	}
	result = removePorts(result);
	result = tolowerCase(result);
	return result;
}
void main(string[] args)
{
	auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        if (line.length>1){
        	string[] data = split(strip(to!string(line)),";");
        	string url1 = data[0].dup;
        	string url2 = data[1].dup;
        	url1 = parseURL(url1);
        	url2 = parseURL(url2);
        	if (url1 == url2)
        		writeln("True");
        	else
        		writeln("False");
        }
    }
}
