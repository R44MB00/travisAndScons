using System;
namespace Endian
{
    class Program
    {
        static void Main(string[] args)
        {
       
        if (BitConverter.IsLittleEndian)
            Console.WriteLine("LittleEndian");
        else Console.WriteLine("BigEndian");
	Console.ReadLine(); 
        }
    }
}
