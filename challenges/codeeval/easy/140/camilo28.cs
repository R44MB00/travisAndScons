using System.Collections.Generic;

namespace Application
{
	class MainClass
	{
		public static void Main (string[] args)
		{
			using (StreamReader reader = File.OpenText(args[0]))
				while (!reader.EndOfStream)
				{
					string line = reader.ReadLine();
					if (null == line)
						continue;
					string test =line;
					string[] test_list = test.Split (';');
					string[] sentence = test_list [0].Split(' ');
					string[] solution = new string[sentence.Length];
					sentence.CopyTo (solution, 0);
					string[] order = test_list [1].Split (' ');
					int place = 0;
					for (int i = 0; i < order.Length; i++) {
						solution [Int32.Parse (order [i])-1] = sentence [i];
					}
					place = 0;
					for (int i = 0; i < sentence.Length; i++) {
						if(!Array.Exists(order,element=>element==(i+1).ToString())){
							place = i;
						}
					}
					solution[place]=sentence[sentence.Length-1];
					Console.WriteLine (string.Join(" ",solution));
				}
		}
	}
}
