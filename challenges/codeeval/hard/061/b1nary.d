import std.stdio;
import std.conv;
import std.string;
string decriptAlphabet(string alphabet){
	char[] tmpalpha = alphabet.dup;
	char[] tmp = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".dup;
	string result ;
	for (int i=0; i< tmp.length; i++){
		for (int j=0; j< tmp.length; j++){
			if (tmp[i] == tmpalpha[j]){
				result ~= tmp[j];
				break;
			}
		}
	}
	return result;
}
void main(string[] args)
{
	string line = "012222 1114142503 0313012513 03141418192102 0113 2419182119021713 06131715070119";
    string[] message = split(strip(line)," ");
    string alphabet = decriptAlphabet("BHISOECRTMGWYVALUZDNFJKPQX");
    char[] tmpalpha = alphabet.dup; 
    for (int i=0;i<message.length;i++){
    	char[] tmpmessage = message[i].dup;
    	for (int j=0;j<tmpmessage.length-1;j=j+2){
    		string tmp = "" ~ tmpmessage[j] ~ tmpmessage[j+1];
    		writef("%c",tmpalpha[to!int(tmp)]);
    	}
    	writef(" ");
    }
}
