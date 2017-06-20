using System;
using System.IO;
using System.Collections.Generic;

class Program
{
    public static Boolean comprobarCaracterCorchete(char[] x)
    {
        Boolean t = true;
        int pos;
        for (int i = 0; i < x.Length; i++)
        {
            if (x[i].Equals('['))
            {
                pos = i;
                for (int j = pos; j < x.Length; j++)
                {
                    if (x[j].Equals(']'))
                    {
                        if (x[j] == x[i + 1])
                        {
                            t = true;
                        }
                        else
                        {
                            t = false;
                        }
                    }
                }
            }
        }
        return t;
    }
    public static Boolean comprobarCaracterParentesis(char[] x)
    {
        Boolean t = true;
        int pos;
        for (int i = 0; i < x.Length; i++)
        {
            if (x[i].Equals('('))
            {
                pos = i;
                for (int j = pos; j < x.Length; j++)
                {
                    if (x[j].Equals(')'))
                    {
                        if (x[j] == x[i + 1])
                        {
                            t = true;
                        }
                        else
                        {
                            t = false;
                        }
                    }
                }
            }
        }
        return t;
    }

    public static Boolean comprobarCaracterLlave(char[] x)
    {
        Boolean t= true;
        int pos;
        for (int i = 0; i < x.Length; i++)
        {
            if (x[i].Equals('{'))
            {
                pos = i;
                for (int j = pos; j < x.Length; j++)
                {
                    if (x[j].Equals('}'))
                    {
                        if (x[j] == x[i + 1])
                        {
                            t = true;
                        }
                        else
                        {
                            t = false;
                        }
                    }
                }
            }
        }
        return t;
    }
    static void Main(string[] args)
    {
        var lines = File.ReadLines(("C:\\Users\\smunoz\\Desktop\\CodeEval\\test.txt"));
        //var lines = File.ReadLines((args[0]));
        char[] x;


        foreach (var line in lines)
        {
            x = line.ToCharArray();
            if ((comprobarCaracterCorchete(x)) && (comprobarCaracterParentesis(x)) && (comprobarCaracterLlave(x)))
            {
                Console.WriteLine("True");
            }
            else
            {
                Console.WriteLine("False");
            }



        }
        Console.ReadKey();


    }


}
