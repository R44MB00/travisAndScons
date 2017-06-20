using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
                explode(line);
            }
        Console.ReadKey();
    }
    private static void compare(string binary, int bit1, int bit2)
    {
        int numero1 = binary.Length - bit1;
        int numero2 = binary.Length - bit2;
        string num1 = binary.Substring(numero1, 1);
        string num2 = binary.Substring(numero2, 1);
        if (num1 == num2)
        {
            Console.WriteLine("true");
        }
        else
        {
            Console.WriteLine("false");
        }
    }
    private static void explode(string str)
    {
        string[] delimitador = new string[] { "," };
        string[] str2 = str.Split(delimitador, StringSplitOptions.None);
        string binary = Convert.ToString(Convert.ToInt32(str2[0]), 2);
        compare(binary, Convert.ToInt32(str2[1]), Convert.ToInt32(str2[2]));
    }
}
