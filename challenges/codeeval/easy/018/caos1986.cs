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
			string[] ele=line.Split(',');
			int i=Int32.Parse(ele[0]);
			while(true){
				if(i%Int32.Parse(ele[1])==0){
					Console.WriteLine(i);
					break;
				}
				i++;
			}
        }
    }
}
