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
			string[] l = line.Split(',');
			int c=0;
			while(!coll(l)){
				for(int i=0;i<l.Length;i++){
					l[i]=rem(l[i]);
				}
				c++;
			}
			Console.WriteLine(c);
        }
    }
	
	public static string rem(string w){
		bool f=false;
		string o="";
		for(int i=0;i<w.Length;i++){
			if(w[i]=='.' && !f){
				f=true;
				continue;
			}
			o+=w[i];
		}
		return o;
	}
	
	public static bool coll(string[] l){
		foreach(string s in l){
			if(s.IndexOf("XY")!=-1)
				return true;
		}
		return false;
	}
}
