using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;


namespace codeeval_reversewords
{
    class Program
    {
        static void Main(string[] args)
        {

           
               // string ruta = "test.txt";
            using (StreamReader sr = new StreamReader(args[0]))
                
                {
                    String line;
                    int counter = 0;

                    string[] vector = null;// Declaración del array
                    vector = new string[300];

                    while ((line = sr.ReadLine()) != null) //lectura del file
                    {
                        vector[counter] = line;
                        string[] splitpalabra = vector[counter].Split(' ');
                        Array.Reverse(splitpalabra);

                        for (int i = 0; i <= splitpalabra.Length - 1; i++)
                        {

                            Console.Write(splitpalabra[i] + " ");
                          
                        }
                        Console.Write("\n");
          
                    }
                   

                    Console.ReadKey();            

                }

        }
    }
}
