using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _1
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
                string[] datos = line.Split(' ');
                fb(Convert.ToInt32(datos[0]), Convert.ToInt32(datos[1]), Convert.ToInt32(datos[2]));
            }
        }

        public static void fb(int x, int y, int n)
        {
            for (int i = 1; i <= n; i++)
            {
                int j = 0;
                if (i%x == 0)
                {
                    j++;
                    Console.Write("F");
                }
                if (i%y == 0)
	            {
                    j++;
		            Console.Write("B");
	            }
                if (j == 0)
                {
                    Console.Write(i);
                }
                if (!i.Equals(n))
                {
                    Console.Write(" ");
                }
            }
            Console.WriteLine();
        }
    }
}
