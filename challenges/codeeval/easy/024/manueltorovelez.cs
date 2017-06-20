using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace codeevalsumofintegers
{
    class Program
    {
        public static void Main(string[] args)
        {
          
            try
            {
                using (StreamReader sr = new StreamReader(args[0]))
               // using (StreamReader sr = new StreamReader("hola.txt")
                {
                    String line;
                    int suma=0;
                    int counter = 0;
                    int[] vector = null;// Declaración del array
                    vector= new int[300]; // Instanciación del array


                    while ((line = sr.ReadLine()) != null) //lectura del file
                    {
                        vector[counter] = int.Parse(line);  //conversion de valores del file
                 
                        counter++;
                    }
                   
                    for (int i = 0; i <= counter;i++ ) 
                    {
                       
                        suma = vector[i] + suma;
                    }

                    
                    Console.WriteLine(suma);
                                     
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
