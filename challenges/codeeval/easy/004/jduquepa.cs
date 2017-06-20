using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class SumOfPrimes
    {
        static void Main2(string[] args)
        {
            int suma = 0;
            int contador = 0;
            int i = 1, n;
            while (contador < 1000)
            {
                int div = 0;
                for (n = 1; n <= i; n++)
                    if (i % n == 0)
                        div++;
                if (div == 2)
                {
                    suma += i;
                    contador++;
                }
                i++;
            }
            System.Console.WriteLine(suma);
            System.Console.Read();
        }
    }
}
