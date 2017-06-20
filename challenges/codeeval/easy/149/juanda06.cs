using System;
using System.Collections.Generic;
using System.IO;

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
            Queue<string> queue = new Queue<string>();
            string binaryNumber = "";

            for (int j = 0; j < splitLine.Length; j++)
            {
                queue.Enqueue(splitLine[j]);
            }


            while (queue.Count > 0)
            {
                string zeros = queue.Dequeue();
                string add = "";

                if (zeros == "00")
                {
                    add = queue.Dequeue();
                    string addOnes = new string('1', add.Length);
                    binaryNumber += addOnes;
                    
                }
                if (zeros == "0")
                {
                    add = queue.Dequeue();
                    binaryNumber += add;
                }
            }

            long result = Convert.ToInt64(binaryNumber, 2);
            Console.WriteLine(result);
        }
    }
}
