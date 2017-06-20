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
            string[] l= line.Split(';');
			string[] ld= l[1].Split(' ');
			int min=-100;
			for(int i=0;i<=ld.Length-Convert.ToInt32(l[0]);i++){
				int sum=0;
				for(int j=0;j<Convert.ToInt32(l[0]);j++){
					Console.Write(ld[i+j]+" ");
					sum+=Convert.ToInt32(ld[i+j]);
				}
				Console.Write("\n");
				if(sum>min)
					min=sum;
			}
			if(min<0)
				Console.WriteLine(0);
			else
				Console.WriteLine(min);
			
        }
    }
}
