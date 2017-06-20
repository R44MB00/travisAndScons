using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;

namespace Main
{
    class Program
    {
        static void Main(string[] args)
        {
            //var lines = File.ReadLines(args[0]).ToArray();
            var lines = File.ReadLines("C:\\Users\\smunoz\\Desktop\\CodeEval\\test.txt");
            char[] temp;
            char tmp;
            foreach (var line in lines)
            {
                var array = line.Split(' ');
                for (int i = 0; i < array.Length; i++)
                {
                    temp = array[i].ToCharArray();
                    tmp = temp[0];
                    temp[0] = temp[temp.Length-1];
                    temp[temp.Length-1] = tmp;
                    array[i] = String.Join("", temp);
                }

                Console.WriteLine(String.Join(" ",array));
            }
            Console.ReadKey();
        }
    }
}
