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
			string[] l = line.Split(',');
			List<string> w=new List<string>();
			List<string> n=new List<string>();
			foreach(string s in l){
				if(Char.IsLetter(s[0]))
					w.Add(s);
				else
					n.Add(s);
			}
			for(int i=0;i<w.Count;i++){
				if (i == w.Count - 1)
					Console.Write(w[i]);
				else
					Console.Write(w[i]+",");					
			}
			if(w.ToArray().Length!=0 && n.ToArray().Length!=0)
				Console.Write("|");
			for(int i=0;i<n.Count;i++){
				if (i == n.Count - 1)
					Console.Write(n[i]);
				else
					Console.Write(n[i]+",");	
			}			
			Console.Write("\n");
			
		}
	}
	
}
