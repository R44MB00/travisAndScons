using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class MultiplicationTables
    {

        public static void Main1(string[] Args)
        {
            string linea;
            for (int i = 1; i <= 12; i++)
            {
                linea = "";
                for (int j = 1; j <= 12; j++)
                {
                    linea += (j * i).ToString().PadLeft(4, ' ');
                }
                System.Console.WriteLine(linea);
            }
            System.Console.Read();
        }
    }
}
