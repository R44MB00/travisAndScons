using System;
using System.IO;

namespace ConsoleApplication4
{
    class Program
    {
        static void Main(string[] args)
        {
            using (StreamReader reader = File.OpenText(args[0]))
                while (!reader.EndOfStream)
                {
                    string line = reader.ReadLine();
                    if (null == line || line == "")
                        continue;
                    else
                    {
                        Console.WriteLine(convertir(line.Trim()));
                    }
                }
            Console.ReadKey();
        }


        protected static string convertir(string cadena)
        {
            int valor = Convert.ToInt32(cadena);
            if (valor > 0)
            {
                String c = "";
                while (valor > 0)
                {
                    if (valor % 2 == 0)
                    {
                        c = "0" + c;
                    }
                    else
                    {
                        c = "1" + c;
                    }
                    valor = (int)(valor / 2);
                }
                Console.WriteLine(c);
            }
            else
            {
                if (valor == 0)
                {
                    Console.WriteLine("0");
                }
            } return("");
        }    
    }
}
