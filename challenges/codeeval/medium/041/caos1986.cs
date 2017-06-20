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
            string[] l = line.Split(';');
			string[] n = l[1].Split(',');
			bool flag=false;
			for(int i=0;i<n.Length-1;i++){
				for(int j=i+1;j<n.Length;j++){
					if(n[i]==n[j]){
						Console.WriteLine(n[i]);
						flag=true;
						break;
					}
				}
				if(flag)
					break;
			}
        }
    }
}
