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
			line=line.Trim();
			string[] l=line.Split(';');
			List<int> izq=l[0].Split(',').Select(Int32.Parse).ToList<int>();
			List<int> der=l[1].Split(',').Select(Int32.Parse).ToList<int>();
			IEnumerable<int> res=izq.Intersect(der);
			string r="";
			foreach(int el in res){
				r+=el+",";
			}
			if(r.Length>1){
				Console.Write(r.Substring(0,r.Length-1)+"\n");
			}else{
				Console.WriteLine("");
			}
        }
    }
}
