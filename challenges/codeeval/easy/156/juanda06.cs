using System;
using System.IO;
using System.Collections.Generic;
 
class Program
{
    static void Main(string[] args)
    {
        StreamReader reader = new StreamReader(args[0]);
        List<string> lines = new List<string>();
        List<string> results = new List<string>();
 
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
            results.Add(ConvertLine(lines[i]));
        }
 
        foreach (var result in results)
        {
            Console.WriteLine(result);
        }
    }
 
    public static string ConvertLine(string line)
    {
        int length = line.Length;
        int index = 0;
        string result = "";
 
        for (int i = 0; i < length; i++)
        {
            if(Char.IsLetter(line[i]))
            {
                if(index % 2 == 0)
                {
                    result += line[i].ToString().ToUpper();
                }
                else
                {
                    result += line[i].ToString().ToLower();
                }
                index++;
            }
            else
            {
                result += line[i];
            }
        }
 
        return result;
    }
}
