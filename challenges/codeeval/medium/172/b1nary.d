import std.stdio;
import std.conv;
import std.string;
int digitToint(char digit){
    string tmp;
    tmp ~= digit;
    return to!int(tmp);
}
int sumofDigits(int numb){
    string tmp = to!string(numb,10);
    char[] tmpdigits = tmp.dup;
    int sum = 0;
    for (int i=0;i<tmpdigits.length;i++){
        sum += digitToint(tmpdigits[i]);
    }
    return sum;
}
void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        string[] data = split(strip(to!string(line))," ");
        char[] digits;
        foreach_reverse(numbers;data){
            char[] tmp = numbers.dup;
            foreach_reverse(character;tmp)
                digits ~= [character];
        }
        int sum = 0;
        for (int i=0;i<digits.length;i++){
            if(i%2 == 1){
                if (digitToint(digits[i])*2 > 9)
                    sum += sumofDigits(digitToint(digits[i])*2);
                else
                    sum += (digitToint(digits[i])*2);
            }
            else
                sum+= digitToint(digits[i]);
        }
        if (sum%10 == 0)
            writeln("1");
        else
            writeln("0");
    }
}
