using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace evennumbers
{
    class Program
    {
        static void Main(string[] args)
        {
             //string ruta = "test.txt";
            using (StreamReader sr = new StreamReader(args[0]))
             {

                 String line;
                 int counter = 0;
                 int[] vector = null;
                 vector = new int[300];

                 while ((line = sr.ReadLine()) != null) //lectura del file
                 {
                     vector[counter] = int.Parse(line); //conversion lineas a int
                     counter++;
                     
                 }
                 for (int i = 0; i <= counter-1;i++) //recorrido por las lineas
                 {
                     //Console.WriteLine(vector[i]);

                     if (vector[i] % 2 == 0)  //comparacion de si e spar
                     {
                         Console.WriteLine("1");
                     }
                     else
                     {
                         Console.WriteLine("0");
                     }
                 }


             }
             Console.ReadKey();
        }
    }
}
