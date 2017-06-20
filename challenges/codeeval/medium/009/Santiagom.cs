using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace pilaImplementation
{
    class Program
    {
        static Stack<int> pila = new Stack<int>();

        static void Main(string[] args)
        {
            var lines = File.ReadLines("C:\\Users\\smunoz\\Desktop\\CodeEval\\test.txt");
            var lines = File.ReadLines((args[0]));
            foreach (var line in lines)
            {
                var numbers = line.Split(' ').Select(int.Parse);

                foreach (var number in numbers)
                {
                    Push(number);
                }

                var sss = new List<string>();

                int? x = Pop().Value;

                while (x.HasValue)
                {
                    sss.Add(x.Value.ToString());
                    x = Pop();
                    x = Pop();
                }

                Console.WriteLine(sss.Aggregate((a, b) => a + " " + b));
            }

            Console.ReadKey();
        }

        private static void Push(int i)
        {
            pila.Push(i);
        }

        private static int? Pop()
        {
            if (pila.Count > 0)
                return (int?)pila.Pop();
            else
                return null;

        }
    }
}
