using System;
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
            string[] l=line.Split(' ');
			int i = Convert.ToInt32(l[l.Length-1]);
			if((l.Length-1)-i>0)
				Console.WriteLine(l[(l.Length)-i]);
        }
    }
}
