using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _31
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
                string[] datos = explode(line);
                int busca = StrReverse(datos[0]).IndexOf(datos[1]);
                int mide = datos[0].Length;
                if (busca != -1)
                {
                    Console.WriteLine(mide - busca - 1);
                }
                else
                {
                    Console.WriteLine("-1");
                }
            }
        }

        public static string[] explode(string cadena)
        {
            string[] arreglo = cadena.Split(',');
            return arreglo;
        }

        private static string StrReverse(string str)
        {
            Char[] arreglo = str.ToCharArray();
            Array.Reverse(arreglo);
            return new string(arreglo);
        }
    }
}
