using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _91
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
                string[] cadenas = line.Split(' ');
                decimal[] numeros = new decimal[Convert.ToInt32(cadenas.Length)];
                int i = 0;
                foreach (string cadena in cadenas)
                {
                    try {
                        numeros[i] = Convert.ToDecimal(cadena);
                        //Console.WriteLine("Converted '{0}' to {1}.", cadena, numeros[i]);
                    }   
                    catch (FormatException) {
                        Console.WriteLine("Unable to convert '{0}' to a Double.", cadena);
                    }
                    catch (OverflowException)
                    {
                        Console.WriteLine("'{0}' is outside the range of a Double.", cadena);
                    }
                    catch (IndexOutOfRangeException)
                    {
                        Console.WriteLine("'{0}' 3 is outside the range of a Double.", cadena);
                    }
                    i++;
                }
                Array.Sort(numeros);
                for (int j = 0; j < numeros.Length; j++)
                {
                    Console.Write(Math.Round(numeros[j],3));
                    if (!numeros.Length.Equals(j+1))
                    {
                        Console.Write(" ");
                    }
                }
                Console.WriteLine();
            }
        }
    }
}
