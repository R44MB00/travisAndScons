using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _23
{
    class Program
    {
        static void Main(string[] args)
        {
            for (int i = 1; i < 13; i++)
            {
                for (int j = 1; j < 13; j++)
                {
                    int mul = i * j;
                    int espacios = 4 - mul.ToString().Length;
                    for (int k = 0; k < espacios; k++)
                    {
                        if (j > 1)
                        {
                            Console.Write(" ");
                        }
                    }
                    Console.Write(mul);
                }
                Console.WriteLine();
            }
            Console.ReadKey();
        }
    }
}
