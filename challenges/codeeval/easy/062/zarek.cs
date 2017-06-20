using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _62
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
                    string[] arreglo = explode(line);
                    Console.WriteLine(modulo(Convert.ToInt32(arreglo[0]), Convert.ToInt32(arreglo[1])));
                }
        }

        public static int modulo(int num1, int num2)
        {
            int numero = num2;
            if (num2 > num1)
            {
                return num1;
            }
            for (int i = 1; i < num1; i++)
            {
                if (i * num2 + num2 > num1)
                {
                    return numero = num1 - (i * num2);
                }
            }
            return numero;
        }

        public static string[] explode(string cadena)
        {
            string[] arreglo = cadena.Split(',');
            return arreglo;
        }
    }
}
