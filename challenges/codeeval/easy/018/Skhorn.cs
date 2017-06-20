// Multiples of a number 

using System;
using System.IO;
using System.Collections.Generic;

class Multiple
{
	public static void Main( string[] args )
	{
		int i = 0;
		int j = 0;
		int x = 0;
		int n = 0;
		int multiple_number = 0;
		bool check = false;

		using (StreamReader reader = File.OpenText(args[0]))
		while(!reader.EndOfStream)
		{
			string line = reader.ReadLine();
			if (null == line)
				continue;
			//Console.Write(line+'\n');
			string[] words = line.Split(',');
			foreach (string word in words)
			{	
				if(i==0)
					x = Int32.Parse(word);
				if(i==1)
				{
					n = Int32.Parse(word);
					while(!check)
					{
						/*Console.WriteLine("Math Pow");
						Console.WriteLine(n*j);
						Console.WriteLine("X");
						Console.WriteLine(x);*/
						if( n*j > x)
						{
							//multiple_number = Convert.ToInt32(Math.Pow(2,j));
							multiple_number = n*j;
							Console.WriteLine(multiple_number.ToString());
							check = true;
							j = 0;
						}
						else
						{
							j++;
						}

					}
					i = 0;
					
				}
				else
				{
					i++;
					check = false;	
				}
			}
		}
	}
}