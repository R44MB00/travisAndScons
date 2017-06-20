using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
 
class Program
{
    static void Main(string[] args)
    {
        StreamReader reader = new StreamReader(args[0]);
        List<string> lines = new List<string>();
        StringBuilder results = new StringBuilder();
        string primeNumbers = "";
        string line = null;
        uint number = 0;
 
        using (reader)
        {
            line = reader.ReadLine();
 
            while (line != null)
            {
                lines.Add(line);
                line = reader.ReadLine();
            }
        }
 
        int length = lines.Count;
 
        for (int i = 0; i < length; i++)
        {
            number = Convert.ToUInt32(lines[i]);
 
            primeNumbers = PrimeNumbers(number);
            primeNumbers = primeNumbers.Remove(primeNumbers.Length - 1);
            if (i == length - 1)
            {
                results.Append(primeNumbers);
            }
            else
            {
                results.Append(primeNumbers).AppendLine();
            }
        }
 
        Console.WriteLine(results.ToString());
 
    }
 
    public static string PrimeNumbers(uint number)
    {
        StringBuilder primeNumbers = new StringBuilder();
 
        for (uint i = 2; i < number; i++)
        {
            if (IsPrime(i))
            {
                primeNumbers.AppendFormat("{0},", i);
            }
        }
 
        return primeNumbers.ToString();
    }
 
    public static bool IsPrime(uint number)
    {
        for (uint i = 2; i < (number / 2 + 1); i++)
        {
            if((number % i) == 0)
            {
                return false;
            }
        }
 
        return true;
    }
}
