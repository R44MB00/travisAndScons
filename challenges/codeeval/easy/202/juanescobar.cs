using System.IO;
using System.Collections.Generic;

class Program
{
    static string GetLong(string[] my_list)
    {
        string major = my_list[0];
        for (int i=0; i < my_list.Length; i++) {
            if (my_list[i].Length > major.Length) {
                major = my_list[i];
            }
        }
        return major;
    }

    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
            string[] words = line.Split(' ');
            string major = GetLong(words);
            string output = "";
            for (int i=0; i < major.Length; i++)
            {
                string append = new System.String('*', i);
                output += " " + append + major[i];
            }
            System.Console.WriteLine(output.Substring(1));
        }
    }
}
