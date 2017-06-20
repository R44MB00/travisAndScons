using System;
using System.Linq;
using System.IO;
using System.Collections.Generic;
using System.Web.Helpers;

class Program
{
	static void Main(string[] args) {
		using (StreamReader reader = File.OpenText(args[0]))
		while (!reader.EndOfStream)
		{
			string line = reader.ReadLine();
			if (null == line || line == "")
				continue;
			int l = Int32.Parse(line);
			if(l%2 == 0)
				Console.WriteLine("1");
			else
				Console.WriteLine("0");
		}
	}	
}
