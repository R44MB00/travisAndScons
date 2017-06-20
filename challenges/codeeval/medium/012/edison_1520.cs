using System.IO;
using System.Collections.Generic;
using System;

    class Program
    {
        static void Main(string[] args)
        {
            using (StreamReader reader = File.OpenText(args[0]))
                while (!reader.EndOfStream)
                {
                    string line = reader.ReadLine();
                    if (null == line)
                        continue;
                    else
                    {
                        string c = metcad(line.Trim());
                        if (c != "")
                        {
                            Console.WriteLine(c);
                        }
                    }
                }
            Console.ReadKey();
        }

        protected static string metcad(string cadena)
        {
            for (int a = 0; a <= cadena.Length; a++)
                for (int i = (a == 0) ? 1 : 0; i <= cadena.Length; i++)
                {
                    if (i < cadena.Length)
                    {
                        if ((cadena.Substring(i, 1) == cadena.Substring(a, 1)) && (cadena.Substring(i, 1) != " ") && i != a)
                            break;
                    }
                    else
                        return cadena.Substring(a, 1);
                }
            return "";
        }
    }
}
