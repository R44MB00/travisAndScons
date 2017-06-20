using System;
using System.IO;
using System.Linq;
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
            string binary = Convert.ToString(number, 2);
            var countOfOnes = binary.Count(x => x == '1');

            Console.WriteLine(countOfOnes);
        }
    }
}
