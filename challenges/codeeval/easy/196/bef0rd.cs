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
            Console.WriteLine(invertNumFrase(line));
			
            
        }
    }
	
	
    public static string invertN(string s) {
        char[] a = s.ToCharArray();
		char tmp = a[0];
        a[0] = (a[a.Length - 1]);
		a[a.Length - 1] = tmp;
        return new string(a);        
    }
    
	
	public static string invertNumFrase(string s) {
			string[] w = s.Split(new char[]{' '});
			string res = "";
			foreach (string word in w) {
				res += invertN(word) + " ";
			}
			
			return res.Trim();
		}	
	
}
