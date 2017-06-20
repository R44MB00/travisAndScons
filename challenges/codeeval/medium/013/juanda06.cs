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
        char[] separator = new char[] { ','};
        string[] splitLine = new string[2];
        string word = "", remove = "", result = "";
 
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
            splitLine = lines[i].Split(separator, StringSplitOptions.RemoveEmptyEntries);
            word = splitLine[0];
            remove = splitLine[1].Remove(0, 1);
 
            for (int j = 0; j < remove.Length; j++)
            {
                word = word.Replace(remove[j].ToString(), "");
            }
            result = word;
            result.Trim();
            results.Add(result);
        }
 
        foreach (var item in results)
        {
            Console.WriteLine(item);
        }
    }
}
