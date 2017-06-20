using System;
using System.IO;
using System.Linq;

namespace Main
{
    class Program
    {
        static void Main(string[] args)
        {
            //var lines = File.ReadLines(args[0]);
            var lines = File.ReadLines(("C:\\Users\\smunoz\\Desktop\\CodeEval\\test.txt"));

            foreach (var line in lines)
            {
                var total = new int[26].ToList();

                foreach (var c in line)
                {
                    var lowerCaseChar = c.ToString().ToLower()[0];
                    if (lowerCaseChar < 'a' || lowerCaseChar > 'z') continue;
                    int index = lowerCaseChar - 'a';
                    total[index]++;
                }

                total.Sort();

                int t = 0;

                for (int i = 0; i < 26; i++)
                {
                    t += total[i] * (i + 1);
                }

                Console.WriteLine(t);
            }

            Console.ReadKey();
        }
    }
}
