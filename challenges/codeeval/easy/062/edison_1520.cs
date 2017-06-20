using System.IO;
using System.Collections.Generic;
using System;

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
            string[] nums = line.Split(Convert.ToChar(","));
			int first = int.Parse(nums[0]);
			int second = int.Parse(nums[1]);
			int divided = first / second;
			int result = first - (divided * second);
			Console.WriteLine(result); 
        }
    }
}
