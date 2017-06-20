
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
            char firstChar;
            char LastChar;
            int lengthWord;
            string result;
            string [] split = line.Split(' ');
            foreach (string s in split) {
                lengthWord=s.Length;
                firstChar = s[0];
                LastChar = s[lengthWord-1];
                if (s.Trim() != "")
                    System.Console.Write(LastChar+s.Substring(1,lengthWord-2)+firstChar);
                    System.Console.Write(" ");
            }
    
            
            System.Console.WriteLine();
            
        }
    }
}
