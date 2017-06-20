import std.stdio;
import std.conv;
import std.string;
char decryptchar(char c){
    if (c >= 'a' && c <= 'f')
        return to!char(to!int(c)+20);
    if (c >= 'g' && c <= 'm')
        return to!char(to!int(c)+7);
    if (c >= 'n' && c <= 't')
        return to!char(to!int(c)-7);
    if (c >= 'u' && c <= 'z')
        return to!char(to!int(c)-20);
    return c;
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string message = strip(to!string(line));
        char[] tmp = message.dup;
        string decrypt;
        for (int i=0;i<tmp.length;i++){
            decrypt ~= decryptchar(tmp[i]);
        }
        writef("%s\n",decrypt);
    }
}
