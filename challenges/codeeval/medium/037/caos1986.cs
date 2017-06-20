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
            string r="";
            string alpha="abcdefghijklmnopqrstuvwxyz";
            for(int i = 0; i<alpha.Length;i++){
                char c = alpha[i];
                if(line.IndexOf(c)==-1){
                    r+=c;
                }
            }
            if(r.Length==0){
                Console.WriteLine("NULL");
            }else{
                Console.WriteLine(r);
            }
        }
    }
}
