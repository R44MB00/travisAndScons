using System.IO;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
            string[] data = line.Split('|');
            string[] numbers = data[0].Trim().Split(' ');
            int iter = System.Int32.Parse(data[1].Trim());
            string temp = "0";
            for (int i=0; i < iter; i++) 
            {
                if (System.Int32.Parse(numbers[i]) > System.Int32.Parse(numbers[i+1])) {
                    temp = numbers[i+1];
                    numbers[i+1] = numbers[i];
                    numbers[i] = temp;
                }
            }

            string output = "";
            for (int i=0; i<numbers.Length; i++) 
            {
                output += " " + numbers[i];
            }
            System.Console.WriteLine(output.Substring(1));
        }
    }
}
