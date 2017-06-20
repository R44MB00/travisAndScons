import std.stdio;
import std.ascii;
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
    	int empty = 0;
        foreach(character;line){
            if (character == 'a'){
                writef("0");
                empty++;
            }
            if (character == 'b'){
                writef("1");
                empty++;
            }
            if (character == 'c'){
                writef("2");
                empty++;
            }
            if (character == 'd'){
                writef("3");
                empty++;
            }
            if (character == 'e'){
                writef("4");
                empty++;
            }
            if (character == 'f'){
                writef("5");
                empty++;
            }
            if (character == 'g'){
                writef("6");
                empty++;
            }
            if (character == 'h'){
                writef("7");
                empty++;
            }
            if (character == 'i'){
                writef("8");
                empty++;
            }
            if (character == 'j'){
                writef("9");
                empty++;
            }
            if (isDigit(character)){
                writef("%c",character);
                empty++;
            }
        }
        if (empty == 0)
            writef("NONE");
        writef("\n");
    }
}
