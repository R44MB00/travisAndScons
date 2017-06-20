using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace codeevaloddnumbers
{
    class Program
    {
        static void Main(string[] args)
        {
            
           
            for (int i=1; i <= 99; i++){ //recorrido hasta 99

                if (i % 2 != 0) // determina si el numero es impar
                {
                    Console.Write(i); //impresion impar
                    Console.Write('\n'); //impresion enter
                }

            }
            Console.ReadKey();
        }
    }
}
