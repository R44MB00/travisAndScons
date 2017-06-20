import std.stdio;
import std.conv;
import std.string;
string[] removeCard(string[] names, int pos){
    int p;
    if (pos>=names.length)
        p = pos-to!int(names.length);
    else
        p = pos;
    while (p >= names.length){
        p = p-to!int(names.length);
    }
    if (p == 0)
        p=to!int(names.length)-1;
    else
        p--;
    names = names[0..p] ~ names[p+1..$];
    return names;
}

void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] data = split(strip(to!string(line))," | ");
        string[] names = split(data[0]," ");
        int blackcard  = to!int(data[1]);
        while(names.length > 1 ){
            names = removeCard(names,blackcard);
        }
        writef("%s\n",names[0]);
    }
}
