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
			string s="";
			bool f=true;
			for(int i=0;i<line.Length;i++){
				if(Char.IsLetter(line[i])){
					if(f){
						s+=Char.ToUpper(line[i]);
						f=!f;
					}else{
						s+=Char.ToLower(line[i]);
						f=!f;
					}
				}else{
					s+=line[i];
				}
			}
			Console.WriteLine(s);
		}
	}
	
}
