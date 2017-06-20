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
            string[] l= line.Split(' ');
            Dictionary<string,int> r = new Dictionary<string,int>();
            for(int i=0;i<l[2].Length-l[0].Length;i++){
                if(diff(l[0],l[2].Substring(i,l[0].Length))<=Convert.ToInt32(l[1])){
                    if(!r.ContainsKey(l[2].Substring(i,l[0].Length))){
                        r.Add(l[2].Substring(i,l[0].Length),diff(l[0],l[2].Substring(i,l[0].Length)));
                    }
                }
            }
            if(r.Count>0){
                var items = from pair in r
                orderby pair.Value ascending
                select pair;                
                if(r.ContainsKey(l[0])){
                    Console.Write(l[0]+" ");
                }
                foreach(KeyValuePair<string, int> pair in items){
                    Console.Write(pair.Key+" ");
                }
            }else{
                Console.Write("No match ");
            }
            Console.WriteLine();
        }
    }
    
    static int diff(string x, string y){
        int cont=0;
        for(int i=0;i<x.Length;i++){
            if(x[i]!=y[i])
                cont++;
        }
        return cont;
    }
}
