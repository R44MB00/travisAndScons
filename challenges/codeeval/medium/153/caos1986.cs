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
            bool[] a = new bool[Convert.ToInt32(l[0])];       
            for(int i = 0; i<Convert.ToInt32(l[1])-1;i++){
                for(int j = 0; j<a.Length;j++){
                    if((j+1)%2==0)
                        a[j]=true;
                    if((j+1)%3==0)
                        a[j]=!a[j];
                }
            }
            a[a.Length-1]=!a[a.Length-1];
            int acu=0;
            for(int i = 0; i<a.Length;i++){
                if(!a[i])
                    acu++;
            }
            Console.WriteLine(acu);
        }
    }
}
