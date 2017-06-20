using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _39
{
    class Program
    {
        static void Main(string[] args)
        {
            int lineas = 0;
            using(StreamReader reader = File.OpenText(args[0]))
            while (!reader.EndOfStream)
            {
                string line = reader.ReadLine();
                if (null == line)
                    continue;
                int res = 0;
                while (!res.Equals(1))
                {
                    if (res.Equals(0))
                    {
                        res = Convert.ToInt32(line);
                    }
                    res = numeroFeliz(Convert.ToInt32(res));
                    if (res.Equals(1))
                    {
                        Console.WriteLine(1);
                    }
                    else
                    {
                        lineas++;
                        if (lineas.Equals(30))
                        {
                            Console.WriteLine(0);
                            lineas = 0;
                            res = 1;
                        }
                    }
                }
            }
        }

        public static int numeroFeliz(int numero)
        {
            double pow = 0;
            int tamanno = numero.ToString().Length;
            int suma = 0;
            for (int i = 0; i < tamanno; i++)
            {
                int num1 = Convert.ToInt32(numero.ToString().Substring(i, 1));
                pow = Math.Pow(num1, 2);
                suma += Convert.ToInt32(pow);
            }
            return Convert.ToInt32(suma);
        }
    }
}
