using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;


namespace codeeval_nmodm
{
    class Program
    {
        static void Main(string[] args)
        {
            string linea, comparador;
            int cont = 0;
            String line;
            int counter = 0;
            string[] vector = null;
            vector = new string[300];


            string ruta = "test.txt";
            using (StreamReader sr = new StreamReader(ruta))
            // using (StreamReader sr = new StreamReader(args[0]))
            {
                while ((line = sr.ReadLine()) != null)
                {
                    vector[counter] = line;
                    string[] spliteado = vector[counter].Split(',');

                    int n = int.Parse(spliteado[0]), m = int.Parse(spliteado[1]);

                    while (n >= m)
                    {
                        n -= m;
                    }
                    Console.WriteLine(n);
                 
                }
                Console.ReadKey();
            }
        }
    }
}
