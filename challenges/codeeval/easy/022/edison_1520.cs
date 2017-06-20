Reto: Fibonacci Series - (Partially)

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication10
{
    class Program
    {
        static void Main(string[] args)
        {
            using (StreamReader reader = File.OpenText(args[0]))
                while (!reader.EndOfStream)
                {
                    string line = reader.ReadLine();
                    long n = long.Parse(line);
                    if (null == n)
                        continue;
                    else
                    {
                        long[] f = new long[3];
                        f[0] = 0;
                        f[1] = 1;
                        for (int j = 2; j < n + 1; j++)
                        {
                            f[2] = f[1] + f[0];
                            f[0] = f[1];
                            f[1] = f[2];
                        }
                        Console.WriteLine(f[2]);
                    }

                } 
        }
    }
}
