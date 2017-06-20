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
			string[] l = line.Split('|');
			string[] l1 = l[0].Trim().Split(' ');
			string[] l2 = l[1].Trim().Split(' ');
			string s="";
			for(int i=0;i<l1.Length;i++){
				int t=Convert.ToInt32(l1[i])*Convert.ToInt32(l2[i]);
				s+=t.ToString()+" ";
			}
			Console.WriteLine(s);
		}
	}
	
}
