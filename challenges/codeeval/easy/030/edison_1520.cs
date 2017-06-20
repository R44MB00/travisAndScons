using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;

class Program
{
    static void Main(string[] args)
    {
        List<string> lines = new List<string>();
        using (StreamReader reader = new StreamReader(args[0]))
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
            string[] split = lines[i].Split(new char[] { ';' }, StringSplitOptions.RemoveEmptyEntries);
            List<int> num1 = split[0].Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries).Select(Int32.Parse).ToList();
            List<int> num2 = split[1].Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries).Select(Int32.Parse).ToList();
            List<int> result = new List<int>();

            if (num1.Count > num2.Count)
            {
                for (int j = 0; j < num2.Count; j++)
                {
                    if (num1.Contains(num2[j]))
                    {
                        result.Add(num2[j]);
                    }
                }
            }
            else
            {
                for (int k = 0; k < num1.Count; k++)
                {
                    if (num2.Contains(num1[k]))
                    {
                        result.Add(num1[k]);
                    }
                }
            }

            if (result.Count != 0)
            {
                if (result.Count != 1)
                {
                    for (int l = 0; l < result.Count - 1; l++)
                    {
                        Console.Write(result[l] + ",");
                    }
                    Console.WriteLine(result[result.Count - 1]);
                }
                else
                {
                    Console.WriteLine(result[0]);
                }
            }
            else
            {
                Console.WriteLine();
            }
        }
    }       
}
