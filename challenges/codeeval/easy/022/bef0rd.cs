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
			Console.WriteLine(fibo(Int32.Parse(line)));
			
            
        }
    }
    
	
	public static int fibo(int s) {
			if (s == 0) return 0;
			if (s == 1) return 1;
			return fibo(s-1)+fibo(s-2);
		}	
	
	
}
