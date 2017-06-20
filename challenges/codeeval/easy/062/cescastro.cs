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
            // do something with line
            
            string [] num = line.Split(',');
            int primero = int.Parse(num[0]);
            int segundo = int.Parse(num[1]);
            int dividido = primero / segundo;
            int result = primero - (dividido * segundo);
            Console.WriteLine(result);
        }
    }
}
