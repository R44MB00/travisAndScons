using System.IO;
using System;
class Roller_Coaster
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            int len = line.Length;
            
            if (len <= 55)
            {
             Console.WriteLine(line);
             continue;
            }

            string res = line.Substring(0, 40);
            if (res.LastIndexOf(' ') > 0){
                res = res.Substring(0, res.LastIndexOf(' '));
            }
            Console.WriteLine(res.Trim()+ "... <Read More>");
        }
    }
}