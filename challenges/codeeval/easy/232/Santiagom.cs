using System;
using System.IO;
using System.Linq;

namespace Main
{
    class Program
    {
        static void Main(string[] args)
        {
            //var lines = File.ReadLines(args[0]);
            var lines = File.ReadLines(("C:\\Users\\smunoz\\Desktop\\CodeEval\\test.txt"));

            foreach (var line in lines)
            {

                string [] array = line.Split('|')[0].Split(' ');
                int iterations = int.Parse(line.Split('|')[1]);
            Founded:
                for (int j = 0; j < iterations; j++)
                {
 
                    for (int i = 0; i < array.Length - 1; i++)
                    {
                        if ((i + 1) < array.Length - 1)
                        {
                            if (int.Parse(array[i]) > int.Parse(array[i + 1]))
                            {
                       
                                var temp = array[i + 1];
                                array[i + 1] = array[i];
                                array[i] = temp;
 
                                break;
                            }

                        }
                    }
                    
                }
                Console.WriteLine(string.Join(" ", array));
                
            }

            Console.ReadKey();
        }
    }
}
