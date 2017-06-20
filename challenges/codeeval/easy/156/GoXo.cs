using System.IO;
using System;
class Roller_Coaster
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine().ToLower();
            string result = "";
            short flag = 0;
            for (int i = 0; i < line.Length; i++)
            {
                if (Char.IsLetter(line[i]))
                {
                    if (Char.IsLower(line[i]) && flag == 0)
                    {
                        result += Char.ToUpper(line[i]);
                        flag = 1;
                        continue;
                    }
                    if (flag == 1) flag = 0;
                } 
                result += line[i];       
            }
            Console.WriteLine(result);
        }
    }
}
