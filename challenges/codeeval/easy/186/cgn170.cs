using System.Collections.Generic;

namespace Application
{
	class MainClass
	{
		static void Main (string[] args)
		{
			using (StreamReader reader = File.OpenText (args [0]))
				while (!reader.EndOfStream) 
				{
					string line = reader.ReadLine ();
					if (null == line)
						continue;
					string test = line; 
					string[] list_test = test.Split (';');
					int period = Int32.Parse (list_test [0]);
					string[] list_days = list_test [1].Trim ().Split ();
					int[] list_days_int = new int[list_days.Length];
					for (int i = 0; i < list_days.Length; i++) {
						list_days_int [i] = Int32.Parse (list_days [i]);
					}
					int max = 0;
					int suma = 0;
					for (int i = 0; i < list_days_int.Length; i++) {
						suma = 0;
						if ((i + period) <= list_days_int.Length) {
							for (int j = i; j < (i + period); j++) {
								suma += list_days_int [j];
							}
							if (suma > max) {
								max = suma;
							}
						}
					}
					Console.WriteLine (max);
				}
			}
	}
}
