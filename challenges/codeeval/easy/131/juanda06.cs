using System;
using System.IO;
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
            string[] splitLine = lines[i].Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);

            string numberFromLine = splitLine[0];
            string pattern = splitLine[1];
            string firstSidePattern = "", secondSidePattern = "";
            string[] splitPattern = new string[pattern.Length];
            string symbol = "";
            long result = 0;

            if(pattern.Contains("+"))
            {
                splitPattern = pattern.Split(new char[] { '+' }, StringSplitOptions.RemoveEmptyEntries);
                firstSidePattern = splitPattern[0];
                secondSidePattern = splitPattern[1];
                symbol = "+";
            }
            else
            {
                splitPattern = pattern.Split(new char[] { '-' }, StringSplitOptions.RemoveEmptyEntries);
                firstSidePattern = splitPattern[0];
                secondSidePattern = splitPattern[1];
                symbol = "-";
            }

            string firstNumberFromPattern = numberFromLine.Substring(0, firstSidePattern.Length);
            string secondNumberFromPattern = numberFromLine.Substring(firstSidePattern.Length, secondSidePattern.Length);

            long firstNumber = Convert.ToInt64(firstNumberFromPattern);
            long secondNumber = Convert.ToInt64(secondNumberFromPattern);

            switch (symbol)
            {
                case "+":
                    result = firstNumber + secondNumber;
                    break;
                case "-":
                    result = firstNumber - secondNumber;
                    break;
            }

            Console.WriteLine(result);
        }
    }
}
