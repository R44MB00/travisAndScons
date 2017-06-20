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
			string[] l = line.Split(';');
			foreach(string s in l) {
				switch (s)
				{
					case "zero":
						Console.Write("0");
					break;
					case "one":
						Console.Write("1");
					break;
					case "two":
						Console.Write("2");
					break;
					case "three":
						Console.Write("3");
					break;
					case "four":
						Console.Write("4");
					break;
					case "five":
						Console.Write("5");
					break;
					case "six":
						Console.Write("6");
					break;
					case "seven":
						Console.Write("7");
					break;
					case "eight":
						Console.Write("8");
					break;
					case "nine":
						Console.Write("9");
					break;
				}
			}
			Console.WriteLine("");
		}
	}
}
