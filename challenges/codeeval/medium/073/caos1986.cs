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
            int sum=0;
            for(int i=0;i<=line.Trim().Length/2;i++){
                sum+=Ideal(line.Trim().Length,i);
            }
            int desc=0;
            int r=0;
            for(int i=0;i<=line.Trim().Length-2;i++){
                if(Convert.ToInt32(line.Substring(i,2))>26){
                    desc+=Descuento(line.Length-r,i+1-r);
                    r++;
                }
            }
            Console.WriteLine(sum-desc);
        }
    }
    
    static int Ideal(int l, int n){
        if(n<=0)
            return 1;
        if(n==1)
            return l-1;
        int sum=0;
        for(int i=1;i<=l-2;i++){
            sum+=Ideal(i,n-1);
        }
        return sum;
    }
    
    static int Descuento(int prof, int pos){
        int act=Fibonacci(prof-pos);
        int ant=0;
        int tmp=0;
        for(int i=1;i<pos;i++){
            tmp=act;
            act=ant+act;
            ant=tmp;
        }
        return act;
    }
    
    static int Fibonacci(int x){
        if(x==0)
            return 0;
        if(x==1)
            return 1;
        else
            return Fibonacci(x-1)+Fibonacci(x-2);
    }
    
}
