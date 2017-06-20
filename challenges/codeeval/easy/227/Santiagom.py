using System;
using System.IO;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
        //using (StreamReader reader = File.OpenText(args[0]))
        using (StreamReader reader = File.OpenText("C:\\Users\\smunoz\\Desktop\\test.txt"))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
            char[] numbers = line.Replace(" ", "").ToCharArray();
            int sumOddNumbers = 0;
            int sumPairNumbers = 0;
            for (int i = 0; i < numbers.Length; i++)
            {
                if (i % 2 == 0)
                {
                    sumPairNumbers = sumPairNumbers + int.Parse(numbers[i].ToString())*2;
                }
                else
                {
                    sumOddNumbers = sumOddNumbers + int.Parse(numbers[i].ToString());
                }
            }
            int sum = sumOddNumbers + sumPairNumbers;
            if (sum % 10 == 0)
            {
                Console.WriteLine("Real");
            }
            else
            {
                Console.WriteLine("Fake");
            }
        }
        Console.ReadKey();
    }
}
