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
			string[] l = line.Split(':');
			List<string> n= l[0].Split(' ').ToList();
			string[] t = l[1].Split(',');
			for(int i=0;i<t.Length;i++){
				string[] ex=t[i].Trim().Split('-');
				string tmp=n[Convert.ToInt32(ex[0])];
				n[Convert.ToInt32(ex[0])]=n[Convert.ToInt32(ex[1])];
				n[Convert.ToInt32(ex[1])]=tmp;
			}
			foreach(string s in n){
				Console.Write(s+" ");
			}
			Console.WriteLine("");
		}
	}
	
}
