import std.stdio;
import std.conv;
import std.string;
string numb2Letter(int i){
    string tmp;
    tmp ~= to!char(i+64);
    return tmp;
}
string toXlcol(int column){
    int dividend, quotient, divisor;
    string result;
    divisor = 26;
    dividend = column;
    quotient = dividend/divisor;
    while (dividend > 26){
        int tmp = dividend - (quotient*divisor);
        if (tmp == 0){
            tmp = 26;
            quotient--;
        }
        result = numb2Letter(tmp) ~ result;
        dividend = quotient;
        quotient = dividend/divisor;
    }
    result = numb2Letter(dividend) ~ result;
    return result;
}

void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        int column = to!int(strip(to!string(line)));
        writeln(toXlcol(column));
    }
}
