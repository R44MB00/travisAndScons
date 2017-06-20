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
			line=line.ToLower();
			Dictionary<string,int> d=new Dictionary<string, int>();
			for(int i=0;i<line.Length;i++){
				
				string c=line[i].ToString();
				if(!Char.IsLetter(line[i]))
					continue;
				if(d.ContainsKey(c)){
					d[c]++;
				}else{
					d.Add(c,1);
				}
			}

			var items = from pair in d
		    orderby pair.Value descending
		    select pair;
			int v=26;
			int acu=0;
			foreach (KeyValuePair<string, int> pair in items){
				acu+=pair.Value*v;
				v--;
			}
			Console.WriteLine(acu);
		}
	}
	
}
