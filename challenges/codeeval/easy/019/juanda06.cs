using System;
using System.IO;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
        StreamReader reader = new StreamReader(args[0]);
        List<string> lines = new List<string>();
        char[] separator = new char[] { ',' };

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
            string[] numbers = lines[i].Split(separator, StringSplitOptions.RemoveEmptyEntries);

            int number = Convert.ToInt32(numbers[0]);
            int firstPosition = Convert.ToInt32(numbers[1]) - 1;
            int secondPosition = Convert.ToInt32(numbers[2]) - 1;

            string binaryNumber = Convert.ToString(number, 2);
            string reversedBinaryNumber = "";

            for (int j = binaryNumber.Length - 1; j >= 0; j--)
            {
                reversedBinaryNumber += binaryNumber[j];
            }

            if (reversedBinaryNumber[firstPosition] == reversedBinaryNumber[secondPosition])
            {
                Console.WriteLine("true");
            }
            else
            {
                Console.WriteLine("false");
            }
        }
    }
}
