using System;
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
			line=line.Trim();
			string[] l=line.Split(',');
			string tmp=l[0].ToString();
			Console.Write(tmp);
			foreach(string el in l){
				if(tmp!=el){
					Console.Write(","+el);
					tmp=el;
				}else{
					continue;
				}
			}
			Console.Write("\n");
        }
    }
}
