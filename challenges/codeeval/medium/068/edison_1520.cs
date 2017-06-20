using System;
using System.IO;

namespace ConsoleApplication4
{
    class Program
    {
        static void Main(string[] args)
        {
            using (StreamReader reader = File.OpenText(args[0]))
            while (!reader.EndOfStream)
            {
                var line = reader.ReadLine();
                if (null == line || line == "")
                    continue;
                else
                {
                    string previous = "";
                    while (line.Length != previous.Length)
                    {
                        previous = line;
                        line = line
                            .Replace("()", String.Empty)
                            .Replace("[]", String.Empty)
                            .Replace("{}", String.Empty);
                    }
                    Console.WriteLine (line.Length == 0);
                }
            }
            Console.ReadKey();
        }
    }
}
