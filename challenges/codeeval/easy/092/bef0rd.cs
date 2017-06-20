using System.IO;
using System;
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
			string[] x = line.Split(' ');
			int s = x.Length - 2;
            Console.WriteLine(x[s]);
            
        }
    }
	
}
