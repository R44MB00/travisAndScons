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
			int f = 11;
			int fp = 0;
			int p = 0;
			foreach(string s in l) {
				if(Ocurrences(line, s) == 1 && Int32.Parse(s)<f) {
					f = Int32.Parse(s);
					fp = p+1;
				}

				p++;
			}
			Console.WriteLine(fp);
		}
	}

	public static int Ocurrences(string s, string c) {
		int acu = 0;
		for(int i = 0;i<s.Length;i++) {
			if(s[i].ToString() == c)
				acu++;
		}
		return acu;
	}
}
