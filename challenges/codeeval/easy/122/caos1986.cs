
using System;
using System.IO;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
		char[] l = {'a','b','c','d','e','f','g','h','i','j'};
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
			string r="";
			for(int i=0;i<line.Length;i++){
				if(Char.IsNumber(line[i])){
					r+=line[i];
				}
				if(Array.IndexOf(l,line[i])!=-1){
					r+=Array.IndexOf(l,line[i]);
				}
			}
			if(r!="")
				Console.WriteLine(r);
			else
				Console.WriteLine("NONE");
        }
    }
}
