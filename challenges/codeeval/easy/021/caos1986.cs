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
			int ac=0;
			for(int i=0;i<line.Length;i++){
				ac+=Int32.Parse(line[i].ToString());
			}
			Console.WriteLine(ac);
        }
    }
}
