using System.IO;
using System.Collections.Generic;
using System;

namespace ConsoleApplication2
{
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
                    else
                    {
                        Console.WriteLine(penultimo(line.Trim()));
                    }
                }
        }

        protected static string penultimo(string cadena)
        {
            String[] p = cadena.Split(Convert.ToChar(" "));
            return p[p.Length-2];
        }
    }
}
