import std.stdio;
import std.conv;
import std.string;
void evaluate(string numbers, string[] positions, char operand){
    char[] initial = positions[0].dup;
    char[] end = positions[1].dup;
    char[] digits = numbers.dup;
    char[] numb1;
    char[] numb2;
    for (int i=0;i<initial.length;i++){
        numb1 = numb1 ~ digits[i];
    }
    for (int i= to!int(initial.length);i<digits.length;i++){
        numb2 = numb2 ~ digits[i];
    }
    int result = 0;
    if (operand == '+'){
        result = to!int(to!string(numb1)) + to!int(to!string(numb2));
    }
    else{
        result = to!int(to!string(numb1)) - to!int(to!string(numb2));
    }
    writeln(result);
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        if (line.length>1){
            string[] numbers = split(strip(to!string(line))," ");
            string[] positions1 = split(numbers[1],"+");
            string[] positions2 = split(numbers[1],"-");
            if (positions1.length > 1)
                evaluate(numbers[0],positions1,'+');
            else
                evaluate(numbers[0],positions2,'-');
        }
    }
}
