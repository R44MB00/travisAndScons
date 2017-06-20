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
            string[] words = line.Split();
            string longest = words[0];
            foreach (string word in words)
                if (word.Length > longest.Length) {
                    longest= word;
                }
            Console.WriteLine(longest);
        }
    }
}