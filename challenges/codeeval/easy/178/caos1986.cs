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
			if (null == line || line == "")
				continue;
			string[] l = line.Split(' ');
			int ord = Convert.ToInt32(Math.Sqrt(l.Length));
			int x = l.Length-ord;
			for(int i = 0;i<ord;i++) {
				for(int j = 0;j<ord;j++) {
					int c=(x+i)-(ord*j);
					Console.Write(l[c]+" ");
				}
			}
			Console.WriteLine();
		}
	}
}
