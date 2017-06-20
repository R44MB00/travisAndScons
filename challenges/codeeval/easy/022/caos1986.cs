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
			int x=Int32.Parse(line);
			if(x>1){
				int a0=0;
				int a1=1;				
				int i=2;
				while(i<Int32.Parse(line)){
					int t=a0+a1;
					a0=a1;
					a1=t;
					i++;
				}
				Console.WriteLine(a0+a1);
			}else if(x==0){
				Console.WriteLine(0);
			}else if(x==1){
				Console.WriteLine(1);
			}
        }
    }
}
