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
            string[] l = line.Split(' ');
            int[] houses = new int[l.Length-1];
            for(int i = 1; i<l.Length;i++){
                houses[i-1]=Convert.ToInt32(l[i]);
            }
            int diff=int.MaxValue;
            for(int i = 0; i<houses.Length;i++){
                diff=Math.Min(diff,comp(houses,houses[i]));
            }
            Console.WriteLine(diff);
            
        }
    }
    
    static int comp(int[] hs, int h){
        int diff=0;
        for(int i = 0; i<hs.Length;i++){
            diff+=Math.Abs(hs[i]-h);
        }
        return diff;
    }
}
