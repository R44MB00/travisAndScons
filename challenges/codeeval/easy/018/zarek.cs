using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _18
{
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
        private static void explode(string str)
        {
            string[] delimitador = new string[] {","};
            string[] str2 = str.Split(delimitador, StringSplitOptions.None);
            int num1 = Convert.ToInt32(str2[0]);
            int num2 = Convert.ToInt32(str2[1]);
            int var = 1;
            while (num1>num2*var)
            {
                var++;
            }
            Console.WriteLine(num2 * var);
        }
    }
}
