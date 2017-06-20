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
			magiaNegra(line);
			
            
        }
    }
    
	
    public static int magiaNegra(string cadena) {
        
    	int[] set1 = Array.ConvertAll(cadena.Split(new char[]{','}), s => int.Parse(s));
        var dictionary = new Dictionary<int, int>();

        foreach (int n in set1)
        {
            if (!dictionary.ContainsKey(n))
                dictionary[n] = 0;
            dictionary[n]++;
        }  
        
        //List<int> repetidos = new List<int>();
        string x = "None";

        foreach(var pair in dictionary)
            if(pair.Value >= set1.Length/2)
                x = (pair.Key).ToString();

        Console.WriteLine(x);
        return 0;
    }
}
