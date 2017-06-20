using System;
using System.Linq;
using System.IO;
using System.Collections.Generic;

class Program
{
	static void Main(string[] args){
		using (StreamReader reader = File.OpenText(args[0]))
		while (!reader.EndOfStream)
		{
			string line = reader.ReadLine();
			if (null == line)
				continue;
			string[] l=line.Split('|');
			string[] n=l[1].Trim().Split(' ');
			string r="";
			foreach(string s in n){
				r+=line[Int32.Parse(s.Trim())-1];
			}
			Console.WriteLine(r);
		}
	}	
}
