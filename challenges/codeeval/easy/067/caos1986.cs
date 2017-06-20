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
			Console.WriteLine(hex2int(line));
		}
	}
	
	
	public static int hex2int(string n){
		string hex="0123456789abcdef";
		int sum=0;
		for(int i=0;i<n.Length;i++){
			sum+=hex.IndexOf(n[(n.Length-1)-i])*Int32.Parse(Math.Pow(16,i).ToString());
		}
		return sum;
	}
}
