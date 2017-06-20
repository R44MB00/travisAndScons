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
			string r="";
			for(int i=0;i<line.Length;i++){
				if(Char.IsUpper(line[i]))
					r+=Char.ToLower(line[i]);
				else
					r+=Char.ToUpper(line[i]);
			}
			Console.WriteLine(r);
		}
	}	
}
