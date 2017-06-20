// Multiples of a number 

using System;
using System.IO;
using System.Collections.Generic;

class Writer
{
	public static void Main( string[] args )
	{
		using (StreamReader reader = File.OpenText(args[0]))
		while(!reader.EndOfStream)
		{
			string line = reader.ReadLine();
			if (null == line)
				continue;
			string[] words = line.Split('|');
			string letters = words[0];
			string[] position = words[1].Split(' ');
			int pos = 0;
			for(int i = 0; i < position.Length; i++)
			{
				if(Int32.TryParse(position[i], out pos))
				{
					Console.Write(letters[pos-1]);
				}
			}
			Console.WriteLine();
		}
	}
}