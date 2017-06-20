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
			string[] l=line.Split(',');
			int t=0;
			if(l[0].IndexOf(l[1])==-1){
				Console.WriteLine(-1);
				continue;
			}
			for(int i=0;i<l[0].Length;i++){
				if(l[0][i].ToString()==l[1]){
					t=i;
				}
			}
			Console.WriteLine(t);
			
		}
	}
}

/*
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
			string[] l=line.Split(',');
			char[] a=l[0].ToCharArray();
			Array.Reverse(a);
			string s=new string(a);
			Console.WriteLine((s.Length-s.IndexOf(l[1]))-1);
			
        }
    }
}*/
