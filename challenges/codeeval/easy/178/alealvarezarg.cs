
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
            
            string[] linetest = line.Trim().Split(' ');

            string[][] matrix = new string[(int)Math.Sqrt(line.Length)][];
            for (int i = 0; i < (int)Math.Sqrt(line.Length); i++)
            {
                matrix[i] = new string[(int)Math.Sqrt(line.Length)];
            }

            int counter = 0;
            for (int i = 0; i < (int)Math.Sqrt(linetest.Length); i++)
            {
                for (int j = 0; j < (int)Math.Sqrt(linetest.Length); j++)
                {

                    matrix[i][j] = linetest[counter];
                    counter = counter + 1;
                }
            }

            string cadena = "";
            for (int i = 0; i < (int)Math.Sqrt(linetest.Length); i++)
            {
                for (int j = 0; j < (int)Math.Sqrt(linetest.Length); j++)
                {
                    cadena = cadena + matrix[(int)Math.Sqrt(linetest.Length) - j - 1][i] + " ";
                }
            }

            System.Console.WriteLine(cadena.Trim());
            
        }
    }
}
