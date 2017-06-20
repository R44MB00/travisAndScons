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
            string[] r=moves(line);
			//r=Array.Sort(r);
			foreach(string s in r){
				if(s!="")
					Console.Write(s+" ");
			
			}
			Console.WriteLine();
        }
    }
	
	public static string[] moves(string p){
		List<string> l = new List<string>();
		string a="abcdefgh";
		int x=a.IndexOf(p[0]);
		int y=Convert.ToInt32(p[1])-48;
		l.Add(valid(x-2,y-1));
		l.Add(valid(x-2,y+1));
		l.Add(valid(x-1,y-2));
		l.Add(valid(x-1,y+2));			
		l.Add(valid(x+1,y-2));
		l.Add(valid(x+1,y+2));		
		l.Add(valid(x+2,y-1));
		l.Add(valid(x+2,y+1));

		return 	l.ToArray();
	}
	
	public static string valid(int x, int y){
		string a="abcdefgh";
		if(x>=0 && x<=7 && y>=1 && y<=8){
			return a[x]+""+y;
		}else{
			return "";
		}

	}
	
}
