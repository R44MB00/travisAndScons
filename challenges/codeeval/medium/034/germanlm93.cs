using System;

namespace NumberPairs.cs
{
	class MainClass
	{
		public static void Main (string[] args)
		{
			String line = "1,2,3,4;50";
			int max = int.Parse(line.Split(';')[1]);
			String[] list = line.Split (';') [0].Split(',');
			String pairs = "";
			int a = 0;
			int b = 0;
			for (int i = 0; i < list.Length-1; i++) {
				for (int j = i+1; j < list.Length; j++) {
					a = int.Parse(list[i]);
					b = int.Parse(list[j]);
					if (a + b == max) {
						pairs += a + "," + b + ";";
					}
				}
			}
			if (pairs.Length == 0) {
				Console.WriteLine ("NULL");
			} else {
				Console.WriteLine (pairs.Substring(0,pairs.Length-1));
			}
		}
	}
}
