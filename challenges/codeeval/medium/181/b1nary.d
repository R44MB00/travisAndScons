import std.stdio;
import std.conv;
import std.string;
int char2int (char c){
    return to!int(c)-48;
}
string fixkey(string message, string key){
    char[] messagetmp = message.dup;
    char[] keytmp = key.dup;
    string fixedkey;
    int count = 0;
    for (int i=0;i<messagetmp.length;i++){
        if (count == keytmp.length)
            count = 0;
        fixedkey ~= keytmp[count];
        count++;
    }
    return fixedkey;
}
char rotateChar(char c, int pos){
    char[] characters = [' ','!','\"','#','$','%','&','\'','(',')','*','+',',','-','.','/','0','1','2','3','4','5','6','7','8','9',':','<','=','>','\?','@','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
    int curr;
    for (int i=0;i<characters.length;i++){
        if(c == characters[i]){
            curr=i;
            break;
        }
    }
    if (curr-pos <0)
        return characters[(characters.length-(pos-curr))];
    else
        return characters[curr-pos];
}

string decodeMessage(string message, string key){
    string keyf = fixkey(message,key);
    string decoded;
    char[] messagetmp=message.dup, keytmp=keyf.dup;
    for (int i=0;i<messagetmp.length;i++){
        decoded ~= rotateChar(messagetmp[i],char2int(keytmp[i]));
    }
    return decoded;
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] data = split(strip(to!string(line)),";");
        string key = data[0];
        string message = data[1];
        writeln(decodeMessage(message,key));
    }
}
