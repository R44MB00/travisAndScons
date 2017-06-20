using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace codeeval_compressed
{
    class Program
    {
        static void Main(string[] args)
        {
            string linea,comparador;
            int cont=0;
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
                    string[] spliteado = vector[counter].Split(' ');

              
                comparador = spliteado[0];
                for (int i = 0; i <= spliteado.Length - 1; i++)
                {

                    if (spliteado[i].Equals(comparador))
                    {
                        cont++;
                    }
                    else
                    {
                        comparador = spliteado[i];
                        Console.Write(cont + " " + spliteado[i - 1] + " ");
                        
                        cont = 1;
                    }
                }
                
                Console.WriteLine(cont + " " + comparador);
                cont = 0;
                }
                Console.ReadKey();
            }
        }
    }
}
