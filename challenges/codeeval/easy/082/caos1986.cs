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
			int sum=0;
			for(int i=0;i<line.Length;i++){
				sum+=Int32.Parse(Math.Pow(Int32.Parse(line[i].ToString()),line.Length).ToString());
			}
			if(sum.ToString()==line.Trim()){
				Console.WriteLine("True");
			}else{
				Console.WriteLine("False");
			}
		}
	}
}
