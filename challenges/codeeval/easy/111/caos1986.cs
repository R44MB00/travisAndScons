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
			int p=0;
			int lo=0;
			int pa=0;
			foreach(string s in l){
				if(s.Length>lo){
					lo=s.Length;
					pa=p;
				}
				p++;
			}
			Console.WriteLine(l[pa]);
		}
	}
	
}
