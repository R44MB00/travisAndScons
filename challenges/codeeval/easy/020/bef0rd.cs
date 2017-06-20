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
            Console.WriteLine(CapitalizeSentence(line));
            
        }
    }

    
    public static string CapitalizeWord(string s) {
        if (string.IsNullOrEmpty(s))
            return "";
        char[] a = s.ToCharArray();
        a[0] = char.ToUpper(a[0]);
        return new string(a);        
    }
    
    public static string CapitalizeSentence(string s) {
    	string[] w = s.Split(new char[]{' '});
    	string res = "";
    	foreach (string word in w) {
    		res += CapitalizeWord(word) + " ";
    	}
    	
        return res.Trim();
    }
}
