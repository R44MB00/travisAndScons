using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _15
{
    class Program
    {
        static void Main(string[] args)
        {
            if (BitConverter.IsLittleEndian)
            {
                Console.WriteLine("LittleEndian");
            }
            else
            {
                Console.WriteLine("BigEndian");
            }
            Console.ReadKey();
        }
    }
}
