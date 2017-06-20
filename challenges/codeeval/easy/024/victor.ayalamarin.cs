using System;
using System.IO;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            int suma = 0;
            string line;
            StreamReader file = new StreamReader("C:\\Users\\VICTOR\\Documents\\Aprueba.txt");
            ///using (StreamReader file = File.OpenText(args[0]))
                do
                {
                line = file.ReadLine();
                if (line != null)
                {
                    
                    line = line.Trim();
                    int aux = 0;
                    aux = Int16.Parse(line);
                    suma = suma + aux;
                }

            } while (line!= null);
            Console.WriteLine(suma);
        }
    }
}
