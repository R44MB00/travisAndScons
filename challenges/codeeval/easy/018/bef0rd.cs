using System.IO;
using System;
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
			Console.WriteLine(magiaNegra(line));
			
            
        }
    }
    
	
    public static int magiaNegra(string s) {
    	string[] w = s.Split(new char[]{','});
    	int l = Int32.Parse(w[0]);
    	int m = Int32.Parse(w[1]);        
    	for (int i = l/m; i<=l;i++) {
            if (i*m >= l) {
                return i*m;
            }
        }
        return 0;
    }
}
