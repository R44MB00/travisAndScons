//Sample code to read in test cases:
using System.IO;
using System.Collections.Generic;
using System;

class Program
{
static uint[] cardinal = { 1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1 };
static string[] romano = { "M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I" };

        static void Main(string[] args)
        {
            using (StreamReader reader = File.OpenText(args[0]))
                while (!reader.EndOfStream)
                {
                    string line = reader.ReadLine();
                    if (null == line)
                        continue;
                    // do something with line
                    else
                        Console.WriteLine(ConvertirRomano(Convert.ToUInt32(line)));
                }
        }

        static string ConvertirRomano(uint numero)
        {
            string NumRomano = "";
            for (int i = 0; i < cardinal.Length && numero != 0; i++)
            {
                while (numero >= cardinal[i])
                {
                    numero -= cardinal[i];
                    NumRomano += romano[i];
                }
            }
            return NumRomano;
        }
}
