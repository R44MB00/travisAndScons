using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _30
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

                string[] pc = explode1(line);
                for (int i = 0; i < 1; i++)
                {
                    string[] pc1 = pc.Reverse().ToArray();
                    string[] c = explode2(pc[i].ToString());
                    int k = 0;
                    for (int j = 0; j < c.Length; j++)
                    {
                        int busca = pc1[i].IndexOf(c[j]);
                        if (busca != -1)
                        {
                            if (k++ >= 1)
                            {
                                Console.Write(",");
                            }
                            Console.Write(c[j]);
                        }
                    }
                    Console.WriteLine();
                }
            }
        }
        public static string[] explode1(string cadena)
        {
            string[] arreglo = cadena.Split(';');
            return arreglo;
        }
        public static string[] explode2(string cadena)
        {
            string[] arreglo = cadena.Split(',');
            return arreglo;
        }
    }
}
