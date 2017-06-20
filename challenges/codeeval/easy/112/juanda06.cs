using System;
using System.IO;

class Program
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))

        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();

            if (null == line)
            {
                continue;
            }

            string[] parts   = line.Split(':');
            string[] numbers = parts[0].Trim().Split(' ');
            string[] swaps   = parts[1].Trim().Split(',');

            foreach (string swap in swaps)
            {
                string[] swapDef = swap.Trim().Split('-');

                int    lhe  = Int32.Parse(swapDef[0]);
                int    rhe  = Int32.Parse(swapDef[1]);
                string temp = numbers[lhe];

                numbers[lhe] = numbers[rhe];
                numbers[rhe] = temp;
            }

            Console.WriteLine(string.Join(" ", numbers));
        }
    }
}
