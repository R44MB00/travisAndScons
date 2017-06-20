using System;
using System.Linq;
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
			string[] l=line.Split(',');
			int a= Int32.Parse(l[0]);
			int b= Int32.Parse(l[1]);
			int c=a/b;
			Console.WriteLine(a-(c*b));
		}
	}
	
}
