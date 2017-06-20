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
			string[] words = line.Split(',');
			int index = -1;
			for (int i=words[0].Length-1; i>=0; i--){
				if (words[1][0] == words[0][i]){
					index = i;
					break;
				}
			}
			Console.WriteLine(index);
		}
	}
}