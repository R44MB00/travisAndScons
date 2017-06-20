using System.IO;
using System;
using System.Collections.Generic;

class Program
{
    static int[,] board = new int[256,256];
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
			Console.WriteLine(runLine(line));
        }
    }
    
	
    public static string runLine(string line) {
        string[] w = line.Split(' ');

        
        int o = Int32.Parse(w[0]);
        int p = Int32.Parse(w[1]);
        int q = Int32.Parse(w[2]);
        int z = Int32.Parse(w[3]);

        if (o == q && p == z) {
            return "here";
        }
        
        if (q > o && z > p) {
            return "NE";
        } 
        
        if (q > o && z < p) {
            return "SE";
        }  

        
        if (q < o && z > p) {
            return "NW";
        }  

        if (q < o && z < p) {
            return "SW";
        }  
        
        if (o == q) {
            if (z > p) {
                return "N";
            } else {
                if (z < p) {
                    return "S";
                }
            }
        }
        
        if (z == p) {
            if (q > o) {
                return "E";
            } else {
                return "W";
            }
        }
        return "wat";
        
        
    }
}
