using System.IO;
using System;
using System.Collections.Generic;
class wine_names
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            string[] parts = line.Split('|');
            string key = parts[1].Trim();
            string[] words = parts[0].Split(' ');
            List<string> res = new List<string>();

            foreach (string w in words)
            {
                int flag = 1;
                string copy = string.Copy(w);

                foreach (char c in key)
                {
                    if (copy.IndexOf(c)==-1) flag = 0;
                    else copy = copy.Remove(copy.IndexOf(c),1);
                }
                if (flag == 1) res.Add(w);
            }
            if (res.Count==0) Console.WriteLine("False");
            else Console.WriteLine(string.Join(" ",res));
            
        }
    }
}