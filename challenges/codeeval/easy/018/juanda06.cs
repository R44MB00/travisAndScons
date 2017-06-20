using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
        StreamReader reader = new StreamReader(args[0]);
        List<string> lines = new List<string>();

        using (reader)
        {
            string line = reader.ReadLine();

            while (line != null)
            {
                lines.Add(line);
                line = reader.ReadLine();
            }
        }


        for (int i = 0; i < lines.Count; i++)
        {
            List<int> numbersFromLine = lines[i].Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries).Select(Int32.Parse).ToList();

            int firstNumber = numbersFromLine[0];
            int secondNumber = numbersFromLine[1];
            int step = 2;
            int result = secondNumber * 2;

            if(firstNumber <= result)
            {
                Console.WriteLine(result);
            }
            else
            {
                while (result < firstNumber)
                {
                    result = secondNumber * step;
                    step++;
                }

                Console.WriteLine(result);
            }
        }
    }
}
