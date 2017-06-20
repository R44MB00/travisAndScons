// Multiples of a number 

using System;
using System.IO;
using System.Collections;
using System.Globalization;

class Sort
{
	public static void Main( string[] args )
	{	
		NumberStyles styles;
		styles = NumberStyles.AllowTrailingSign |  NumberStyles.Float; 
		int count = 0;
		int numDigitsAfterPoint = 3;

		using (StreamReader reader = File.OpenText(args[0]))
		while(!reader.EndOfStream)
		{
			
			string line = reader.ReadLine();
			if (null == line)
				continue;
			count++;
			int iter = 0;
			string[] words = line.Split(' ');
			
			double[] double_array = new double[words.Length];
			foreach(var item in words)
			{	
				double value_n = double.Parse(item, styles, CultureInfo.InvariantCulture);

				double_array[iter] = value_n;
				iter++;
			}
			Array.Sort(double_array);
			foreach(var i in double_array) Console.Write(i.ToString("F" + numDigitsAfterPoint) + " ");
			Console.Write('\n');

		}
	}
}