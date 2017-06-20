using System;
using System.IO;
using System.Collections.Generic;

class Program
{
    
    
    static void Main(string[] args)
    {
        Dictionary<char,int> d = new Dictionary<char,int>();
        d.Add('M', 1000);
        d.Add('D', 500);
        d.Add('C', 100);
        d.Add('L', 50);
        d.Add('X', 10);
        d.Add('V', 5);
        d.Add('I', 1);
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
            int v=0;
            int ant;
            int antb=0;
            int s=0;
            for(int i =0; i<line.Length;i+=2){
                ant=v;
                v=(Convert.ToInt32(line[i])-48)*(d[(line[i+1])]);
                if(antb<d[line[i+1]]){
                    s-=ant;
                }else{
                    s+=ant;
                }
                antb=d[line[i+1]];
            }
            s+=v;
            Console.WriteLine(s);
        }
    }
    
}
