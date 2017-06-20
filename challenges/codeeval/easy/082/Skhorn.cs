// Multiples of a number 

using System;
using System.IO;
using System.Collections.Generic;

class ArmstongNums
{
	public static void Main( string[] args )
	{

		int n = 0;
		int val = 0;
		int num_r = 0;
		using (StreamReader reader = File.OpenText(args[0]))
		while(!reader.EndOfStream)
		{
			string line = reader.ReadLine();
			if (null == line)
				continue;
			
			//Console.WriteLine(line);
			string s = line;
			num_r = Convert.ToInt32(line);
			foreach (char c in s)
			{
				//Console.WriteLine("Value of c:::::" + c);
			    n = (int)Char.GetNumericValue(c);
			    //Console.WriteLine("Value of n:::::" + n);
			    //Console.WriteLine("Value of s::::::" + s.Length);
			    val += Convert.ToInt32(Math.Pow(n, s.Length));
			    //Console.WriteLine("Math Pow:::::"+val);
			}
			if(val == num_r)
			{
				Console.WriteLine("True");
			}
			else
			{
				Console.WriteLine("False");
			}
			num_r = 0;
			n = 0;
			val = 0;	

			/*for (int i = 0; i < s.Length; i++)
			{
			    Console.WriteLine(s[i]);
			}*/

		}
	}
}