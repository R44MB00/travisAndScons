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
			string[] l=line.Split(' ');
			string r="";
			foreach(string s in l){
				r+=UppercaseFirst(s)+" ";
			}
			Console.WriteLine(r);
		}
	}

    static string UppercaseFirst(string s)    {
		if (string.IsNullOrEmpty(s)){
			return string.Empty;
		}
		return char.ToUpper(s[0]) + s.Substring(1);
    }	
	
}
