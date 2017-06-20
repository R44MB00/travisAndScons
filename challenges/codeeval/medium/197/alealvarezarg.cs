

using System;
using System.IO;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
            
            line = line.Trim();

            string[] letras = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z" };
            
            int num = int.Parse(line);

            string cadena = "";

            while (num != 0)
            {
                int res = num % 26;
                num = num / 26;

                if (res == 0)
                {
                    res = 26;
                    num = num - 1;
                }
                cadena = letras[res - 1] + cadena;

            }

            Console.WriteLine(cadena);
            
        }
    }
}




