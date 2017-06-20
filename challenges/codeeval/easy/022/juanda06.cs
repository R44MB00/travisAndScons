using System;
using System.IO;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
        StreamReader reader = new StreamReader(args[0]);
        List<string> lines = new List<string>();

        using (reader)
        {
            string line = reader.ReadLine();

            while (line != null)
            {
                lines.Add(line);
                line = reader.ReadLine();
            }
        }

        for (int i = 0; i < lines.Count; i++)
        {
            int number = Convert.ToInt32(lines[i]);
            Console.WriteLine(Fibonacci(number));
        }
    }

    static long Fibonacci(int number)
    {
        if (number == 0 || number == 1)
        {
            return number;
        }

        return Fibonacci(number - 1) + Fibonacci(number - 2);
    }
}
