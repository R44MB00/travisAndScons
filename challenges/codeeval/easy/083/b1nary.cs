using System;
using System.IO;
using System.Linq;
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
			line = line.ToLower();
			var characterCount= new Dictionary<char,int>();
			foreach(var c in line)
			{
				if (Char.IsLetter(c)){
					if(characterCount.ContainsKey(c))
						characterCount[c]++;
					else
						characterCount[c] = 1;
				}
				
			}
			characterCount = characterCount.OrderByDescending(x => x.Value).ToDictionary(x => x.Key, x => x.Value);
			int beauty = 26;
			int sum = 0;
			foreach(var pair in characterCount)
			{
				sum = sum + (pair.Value*beauty);
				beauty = beauty -1;
			}
			Console.WriteLine(sum);
		}
	}
}
			