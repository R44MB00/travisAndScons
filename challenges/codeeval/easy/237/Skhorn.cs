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
			int sumHex = 0;
			int sumBin = 0;
			string line = reader.ReadLine();
			if (null == line)
				continue;
			string[] lines = line.Split('|');
			string[] virus = lines[0].Split(' ');
			string[] antivirus = lines[1].Split(' ');
			for(int i = 0; i < virus.Length; i++)
			{
				//Console.WriteLine(virus[i]);
				if(virus[i] != "")
				{
					int decValue = int.Parse(virus[i], System.Globalization.NumberStyles.HexNumber);
					sumHex += decValue;
					//Console.WriteLine(sumHex);
				}
				
			}
			for(int i = 0; i < antivirus.Length; i++)
			{
				if(antivirus[i] != "")
				{
					int binValue = Convert.ToInt32(antivirus[i],2);
					sumBin += binValue;
					//Console.WriteLine(sumBin);
				}
			}

			if(sumBin >= sumHex)
			{
				Console.WriteLine("True");	
			}
			else
			{
				Console.WriteLine("False");
			}
			//Console.WriteLine();
		}
	}
}