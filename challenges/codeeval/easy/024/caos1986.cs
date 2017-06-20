using System;
using System.IO;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
		int ac=0;
        using (StreamReader reader = File.OpenText(args[0]))		
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
            ac+=Int32.Parse(line);
        }
		Console.Write(ac);
    }
}
