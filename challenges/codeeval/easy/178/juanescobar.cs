using System;
using System.IO;
using System.Collections.Generic;

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
            string[] vector = line.Split(' ');
            int dim = Convert.ToInt32(Math.Sqrt(vector.Length));
            int c = 0;
            string salida = "";
            for (int i=0; i < vector.Length; i=i+dim, c++) {
                for(int j=1; j < dim+1; j++) {
                    salida += vector[(vector.Length-(dim*j)) + c] + " ";
                }
            }
            Console.WriteLine(salida.Substring(0, salida.Length-1));
        }
    }
}
