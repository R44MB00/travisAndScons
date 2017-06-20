using System.IO;
using System;

class wine_names
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            string[] parts = line.Split(',');
            string key = "GoX";
            string eval = parts[1].Replace("\\*",key);
            string[] words = eval.Split('*');
            string res = "true";

            for (int i=0; i< words.Length; i++) 
            {   
                string current = words[i].Replace(key,"*");
                int idx = parts[0].IndexOf(current);
                if (current == "") continue;
                
                if (idx < 0)
                {
                    res = "false";
                    break;
                }else{
                    parts[0] = parts[0].Remove(0,idx);
                }
                
            }
            Console.WriteLine(res);
        }
    }
}