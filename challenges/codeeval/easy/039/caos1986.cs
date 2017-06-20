using System;
using System.Linq;
using System.IO;
using System.Collections.Generic;

class Program
{
	static void Main(string[] args)
	{
		using (StreamReader reader = File.OpenText(args[0]))
		while (!reader.EndOfStream)
		{
			string line = reader.ReadLine();
			if (null == line)
				continue;
			string l=line;
			int c=0;
			while(c<5000){
				int sum=0;
				for(int i=0;i<l.Length;i++){
					int j=Int32.Parse(l[i].ToString());
					sum+=(j*j);
				}
				l=sum.ToString();
				if(l=="1"){
					Console.WriteLine("1");
					break;
				}
				c++;
			}
			if(c==5000){
				Console.WriteLine("0");
			}
		}
	}
}
