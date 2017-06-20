using System;
using System.Linq;
using System.IO;
using System.Collections.Generic;

class Program
{
	static void Main(string[] args) {
		using (StreamReader reader = File.OpenText(args[0]))
		while (!reader.EndOfStream)
		{
			string line = reader.ReadLine();
			if (null == line || line=="")
				continue;
			line = line.Trim();
			line = line.Replace(") (", ":");
			line = line.Replace(")", "");
			line = line.Replace("(", "");
			//line = line.Replace(" ", "");
			string[] l = line.Split(':');
			string[] c1 = l[0].Trim().Split(',');
			string[] c2 = l[1].Trim().Split(',');
			int x1 = Convert.ToInt32(c1[0]);
			int x2 = Convert.ToInt32(c2[0]);
			int y1 = Convert.ToInt32(c1[1]);
			int y2 = Convert.ToInt32(c2[1]);
			Console.WriteLine(Convert.ToInt32(Math.Sqrt(Math.Pow(x1-x2, 2)+Math.Pow(y1-y2, 2))));
		}
	}	
}
