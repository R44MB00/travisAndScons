using System;
using System.IO;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
        //using (StreamReader reader = File.OpenText('text.txt'))
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
            var data = line.Split(new char[] { ';' });
            var words = data[0].Split(new char[] { ' ' });
            var numbers = data[1].Split(new char[] { ' ' });
            var result = new string[words.Length];

            int numSum = 0;
            int totSum = 0;
            for (int i = 0; i < numbers.Length; i++ )
            {
                totSum += (i+1);
                int num = int.Parse(numbers[i]);
                numSum += num;
                result[num-1] = words[i];
            }
            totSum += words.Length;
            result[(totSum - numSum) -1] = words[words.Length -1];

            Console.WriteLine(string.Join(" ", result));
        }
         Console.ReadKey();
    }
}
