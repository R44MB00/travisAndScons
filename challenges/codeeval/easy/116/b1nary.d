import std.stdio;
import std.array;
import std.conv;
import std.string;
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
    	string[] values = split(strip(to!string(line))," ");
    	immutable string[string] characters = [".-":"A","-...":"B","-.-.":"C","-..":"D",".":"E","..-.":"F","--.":"G","....":"H","..":"I",".---":"J","-.-":"K",".-..":"L","--":"M","-.":"N","---":"O",".--.":"P","--.-":"Q",".-.":"R","...":"S","-":"T","..-":"U","...-":"V",".--":"W","-..-":"X","-.--":"Y","--..":"Z","-----":"0",".----":"1","..---":"2","...--":"3","....-":"4",".....":"5","-....":"6","--...":"7","---..":"8","----.":"9"];
        foreach (i;values){
        	if (i == "")
        		writef(" ");
        	else {
        		writef("%s",characters[i]);
        	}
        }
        writef("\n");
    }
}
