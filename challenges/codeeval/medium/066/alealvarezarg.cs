

using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
            
            int number = int.Parse(line) - 1;

            int[][] C = new int[number + 1][];
            for (int i = 0; i < number + 1; i++)
            {
                C[i] = new int[number + 1];
            }

            for (int i = 0; i < C.Length; i++)
            {
                C[i][0] = 1;
                C[i][i] = 1;
            }
            
            for (int i = 1; i < C.Length; i++)
            {
                for (int j = 1; j < i; j++)
                {
                    C[i][j] = C[i - 1][j - 1] + C[i - 1][j];
                }
            }

            string cadena = "";
            for (int i = 0; i < C.Length; i++)
            {
                for (int j = 0; j < i + 1; j++)
                {
                    cadena = cadena + C[i][j] + " ";
                }
            }

            System.Console.WriteLine(cadena.Trim());
            
        }
    }
}
