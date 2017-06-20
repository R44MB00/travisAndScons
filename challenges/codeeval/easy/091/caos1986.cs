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
			double[] d= new double[l.Length];
			for(int i=0;i<l.Length;i++){
				d[i]=Double.Parse(l[i]);
			}
			Array.Sort(d);
			for(int i=0;i<l.Length;i++){
				Console.Write("{0:0.000}",d[i]);
				if(i!=l.Length-1){
					Console.Write(" ");
				}
			}			
			Console.Write("\n");
		}
	}
}
