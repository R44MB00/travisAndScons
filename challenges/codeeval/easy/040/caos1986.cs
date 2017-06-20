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
			bool b=false;
			for(int i=0;i<line.Length;i++){
				if(Int32.Parse(line[i].ToString())==CountStringOccurrences(line.Trim(),i.ToString())){
					b=true;
				}else{
					b=false;
					break;
				}
			}
			if(!b){
				Console.WriteLine("0");
			}else{
				Console.WriteLine("1");
			}
		}
	}
	
    public static int CountStringOccurrences(string text, string pattern){
		// Loop through all instances of the string 'text'.
		int count = 0;
		int i = 0;
		while ((i = text.IndexOf(pattern, i)) != -1)
		{
			i += pattern.Length;
			count++;
		}
		return count;
    }	
}
