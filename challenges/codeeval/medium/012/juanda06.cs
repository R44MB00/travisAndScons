using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
 
class Program
{
    public static char priCara = '\0';
    static void Main(string[] args)
    {
        StreamReader reader = new StreamReader(args[0]);
        List<string> lines = new List<string>();
        List<char> results = new List<char>();
 
        using (reader)
        {
            string line = reader.ReadLine();
 
            while (line != null)
            {
                lines.Add(line);
                line = reader.ReadLine();
            }
        }
 
        int length = lines.Count;
 
        for (int i = 0; i < length; i++)
        {
            priCara = PrimCarac(lines[i]);
            results.Add(priCara);
        }
 
        foreach (var result in results)
        {
            Console.WriteLine(result);
        }
    }
 
    public static char PrimCarac(string line)
    {
        int length = line.Length;
        int count = 0;
 
        for (int i = 0; i < length; i++)
        {
            count = line.Count(x => x == line[i]);
            if(count == 1)
            {
                priCara = line[i];
                break;
            }
        }
 
        return priCara;
    }
}
