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
			string r=""+line.Trim()[0];
			int ri=0;
            for(int i=1;i<line.Length;i++){
				if(Char.ToLower(line[i])==Char.ToLower(r[ri]))
					continue;
				else{
					r+=line[i];
					ri++;
				}
			}
			Console.WriteLine(r);
        }
    }
}
