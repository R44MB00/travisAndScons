// Multiples of a number 

using System;
using System.IO;
using System.Collections.Generic;
using System.Collections;

class HiddenDigits
{
	public static void Main( string[] args )
	{

		Dictionary<string, int> dictionary = new Dictionary<string, int>();

		dictionary.Add("a", 0);
		dictionary.Add("b", 1);
		dictionary.Add("c", 2);
		dictionary.Add("d", 3);
		dictionary.Add("e", 4);
		dictionary.Add("f", 5);
		dictionary.Add("g", 6);
		dictionary.Add("h", 7);
		dictionary.Add("i", 8);
		dictionary.Add("j", 9);
		dictionary.Add("0", 0);
		dictionary.Add("1", 1);
		dictionary.Add("2", 2);
		dictionary.Add("3", 3);
		dictionary.Add("4", 4);
		dictionary.Add("5", 5);
		dictionary.Add("6", 6);
		dictionary.Add("7", 7);
		dictionary.Add("8", 8);
		dictionary.Add("9", 9);

		ArrayList keys = new ArrayList();

		using (StreamReader reader = File.OpenText(args[0]))
		while(!reader.EndOfStream)
		{
			string line = reader.ReadLine();
			if (null == line)
				continue;
			//Console.WriteLine(line);
			for(int i = 0; i < line.Length; i++)
			{
				//Console.WriteLine(line[i]);
				if(dictionary.ContainsKey(line[i].ToString()))
				{
					keys.Add(line[i]);
				}
			}

			if(keys.Count > 0)
			{
				foreach(var key in keys)
				{
					Console.Write(dictionary[key.ToString()]);
				}
			}
			else
			{
				Console.Write("NONE");
			}
			Console.WriteLine();
			keys = new ArrayList();
		}
	}
}