using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _26
{
    class Program
    {
        static void Main(string[] args)
        {
            string fileName = args[0];
            FileInfo f = new FileInfo(fileName);
            long s = f.Length;
            Console.WriteLine(s.ToString());
        }
    }
}
