import std.stdio;
import std.conv;
import std.string;
void printroman(int n, char letter){
    for (int i=0;i<n;i++){
        writef("%c",letter);
    }
}

void main(string[] args)
{
    auto file = File(args[1]);
    auto range = file.byLine();
    foreach (line;range){
        if (line.length>1){
            int number = to!int(strip(to!string(line)));
            int n = 0;
            while (number>0){
                if (number>=1000){
                    n = number/1000;
                    number = number - (n*1000);
                    printroman(n,'M');
                    n=0;
                }
                else if(number >= 500){
                    if (number >= 900){
                        writef("%s","CM");
                        number = number - 900;
                    }
                    else{
                        n = number/500;
                        number = number - (n*500);
                        printroman(n,'D');
                        n=0;
                    }
                }
                else if(number >= 100){
                    if (number >= 400){
                        writef("%s","CD");
                        number = number - 400;
                    }
                    else{
                        n = number/100;
                        number = number - (n*100);
                        printroman(n,'C');
                        n=0;
                    }
                }
                else if(number >= 50){
                    if (number >= 90){
                        writef("%s","XC");
                        number = number-90;
                    }
                    else {
                        n = number/50;
                        number = number - (n*50);
                        printroman(n,'L');
                        n=0;
                    }
                }
                else if(number >= 10){
                    if (number >= 40){
                        writef("%s","XL");
                        number = number-40;
                    }
                    else{
                        n = number/10;
                        number = number - (n*10);
                        printroman(n,'X');
                        n=0;
                    }
                }
                else if(number >= 5){
                    if (number == 9){
                        writef("%s","IX");
                        number = number-9;
                    }
                    else{
                        n = number/5;
                        number = number - (n*5);
                        printroman(n,'V');
                        n=0;
                    }
                }
                else if(number >= 1){
                    if (number == 4){
                        writef("%s","IV");
                        number = number-4;
                    }
                    else{
                        n = number/1;
                        number = number - (n*1);
                        printroman(n,'I');
                        n=0;
                    }
                }
            }
            writef("\n");
        }
    }
}
