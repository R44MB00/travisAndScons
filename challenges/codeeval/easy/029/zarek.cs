using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _29
{
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
                string[] a = line.Split(',');
                string[] b = a.Distinct().ToArray();
                if (a.Length != b.Length)
                {
                    Console.WriteLine(String.Join(",", b));
                }
                else
                {
                    Console.WriteLine(line);
                }
            }
        }
    }
}
