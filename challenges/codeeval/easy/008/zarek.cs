using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _8
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
                Console.WriteLine(strrev(line));
            }
        }

        private static string strrev(string s)
        {
            string[] delimitador = new string[] {" "};
            string[] arr = s.Split(delimitador, StringSplitOptions.None);
            Array.Reverse(arr);
            string respuesta = string.Join(" ", arr);
            return respuesta;
        }
    }
}
