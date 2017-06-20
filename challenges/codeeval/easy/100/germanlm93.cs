using System;

namespace EvenNumber
{
	class MainClass
	{
		public static void Main (string[] args)
		{
			String line = "4123";
			Int16 num = Int16.Parse (line);
			if (num % 2 == 0) {
				Console.WriteLine (1);
			} else {
				Console.WriteLine (0);
			}
		}
	}
}
