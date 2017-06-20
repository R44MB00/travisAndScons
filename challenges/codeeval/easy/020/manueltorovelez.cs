using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace codeeval_lowercase
{
    class Program
    {

        public static void Main(string[] args)
        {

            try
            {
               // string ruta = "test.txt";
                //using (StreamReader sr = new StreamReader(ruta))
                using (StreamReader sr = new StreamReader(args[0]))
                {
                    String line;
            
                   
                    int counter = 0;
                    string[] vectormin = null;// Declaración del array
                    vectormin = new string[300];

                    while ((line = sr.ReadLine()) != null) //lectura del file
                    {
                        vectormin[counter] = line.ToLower(); //conversion a minusculas
                        counter++;
                      
                    }
                    for (int i = 0; i <= counter;i++ ) //mostrado del resultado
                    {
                        Console.WriteLine(vectormin[i]);
                    }
                }

            }
            catch (Exception e)
            {
                Console.WriteLine("The file could not be read:");
                Console.WriteLine(e.Message);
            }
            System.Console.ReadLine();
        }


    }
}
