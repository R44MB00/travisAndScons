import std.stdio;
import std.array;
import std.conv;
import std.string;
int rotate(char[] str, int currentpos, int n){
    int fpos;
    if (currentpos+n >= str.length){
        fpos = currentpos+n- to!int(str.length);
        while(fpos>=str.length){
            fpos = fpos - to!int(str.length);
        }
    }
    else
        fpos = currentpos+n;
    return fpos;
}

bool check_magic(int numb){
    char[] str = to!string(numb).dup;
    char[] tested = [str[0]];
    for (int i=1; i<str.length;i++){
        for (int j=0; j<tested.length;j++){
            if (str[i] == tested[j])
                return false;
        }
        tested = tested~[str[i]];
    }
    tested = [];
    int pos = 0;
    for (int i=0; i<str.length;i++){
        //writef("%s  %c  %s\n",str,str[pos],tested);
        if (i==0){
            tested = tested ~ [str[0]];
            pos = rotate(str,0,to!int(str[0]));
        }
        for (int j = 0;j<tested.length;j++){
            if ((str[pos] == tested[j]) && (i != str.length-1))
                return false;
            else if (i == str.length-1 && str[pos] != tested[0])
                return false;
        }
        tested = tested ~ [str[pos]];
        pos = rotate(str,pos,to!int(str[pos]));
    }
    return true;
}

void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        if (line.length>1){
            string[] values = split(strip(to!string(line))," ");
            int start;
            int end;
            bool magic = false;
            start = to!int(values[0]);
            end = to!int(values[1]);
            for (int i=start;i<=end;i++){
                bool test = check_magic(i);
                if (test){
                    writef("%d ",i);
                    magic = true;
                }
            }
            if (magic == false)
                writef("-1");
            writef("\n");
        }
    }
}
