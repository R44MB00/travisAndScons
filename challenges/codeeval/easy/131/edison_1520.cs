using System.IO;
using System.Collections.Generic;
using System;

namespace ConsoleApplication2
{
    class Program
    {
        static void Main(string[] args)
        {
            using (StreamReader reader = File.OpenText(@"D:\test.txt"))
                while (!reader.EndOfStream)
                {
                    string line = reader.ReadLine();
                    if (null == line || line == "")
                        continue;
                    else
                    {
                        Console.WriteLine(challenge(line.Trim()));
                    }
                }
            Console.ReadKey();
        }

        protected static string challenge(string cadena)
        {
            String[] str = cadena.Split(Convert.ToChar(" "));
            String num = str[0];
                String letras = str[1];
                String valor1; String valor2;
                for (int i=0;i<letras.Length;i++){
                    if (letras.Substring(i,1)=="+") {
                        valor1=num.Substring(0,i);
                        valor2=num.Substring(i,num.Length-i);
                        return (Convert.ToInt32(valor1) + Convert.ToInt32(valor2)).ToString();
                    }
                    else{
                        if (letras.Substring(i, 1) == "-")
                        {
                            valor1=num.Substring(0,i);
                            valor2=num.Substring(i,num.Length-i);
                            return (Convert.ToInt32(valor1) - Convert.ToInt32(valor2)).ToString();
                        }
                    }
                }return ("");
        }
    }
}

