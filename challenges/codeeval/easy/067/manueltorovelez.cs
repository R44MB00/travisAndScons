using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace codeeval_hextodecimal
{
    class Program
    {
        static void Main(string[] args)
        {

             String line;
            int counter = 0;
            string[] vector = null;
            vector = new string[300];
           
             
            string ruta = "test.txt" ;
            using (StreamReader sr = new StreamReader(ruta))
            {
                
                while ((line = sr.ReadLine()) != null)
                {

                    vector[counter] = line;
                    int decValue = Convert.ToInt32(vector[counter], 16);

                    //counter++;

                    for (int i = 0; i <= counter; i++)
                    {
                        Console.WriteLine(decValue);
                    }
                }
            }

            Console.ReadKey();
        }
    }
}
