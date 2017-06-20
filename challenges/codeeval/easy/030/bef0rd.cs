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
    	string[] w = cadena.Split(new char[]{';'});
    	int[] set1 = Array.ConvertAll(w[0].Split(new char[]{','}), s => int.Parse(s));
    	int[] set2 = Array.ConvertAll(w[1].Split(new char[]{','}), s => int.Parse(s));
        var dictionary = new Dictionary<int, int>();

        foreach (int n in set1)
        {
            if (!dictionary.ContainsKey(n))
                dictionary[n] = 0;
            dictionary[n]++;
        }  
        foreach (int n in set2)
        {
            if (!dictionary.ContainsKey(n))
                dictionary[n] = 0;
            dictionary[n]++;
        }  
        List<int> repetidos = new List<int>();

        foreach(var pair in dictionary)
            if(pair.Value > 1)
                repetidos.Add(pair.Key);
            
        repetidos.Sort();
        string output = System.String.Empty;
        foreach (int i in repetidos) 
            output += (i.ToString())+" ";
                
        Console.Write(output.Trim().Replace(" ", ","));
        Console.WriteLine();
        return 0;
    }
}
