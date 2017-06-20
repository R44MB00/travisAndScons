using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _22
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
                    fibonacci(Convert.ToInt32(line));
                }
            Console.ReadKey();
        }

        private static string fibonacci(int num)
        {
            if (num<=1)
            {
                return num.ToString();
            }
            int a=0, b=1, c=0;
            for (int i = 2; i <= num; i++)
            {
                c = a + b;
                a = b;
                b = c;
            }
            return c.ToString();
        }
    }
}
