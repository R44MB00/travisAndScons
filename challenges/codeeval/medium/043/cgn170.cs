using System;
using System.IO;
using System.Collections.Generic;

namespace Application
{
	class MainClass
	{
		public static void Main (string[] args)
		{
			using (StreamReader reader = File.OpenText (args [0]))
				while (!reader.EndOfStream) {
					string line = reader.ReadLine ();
					if (null == line)
						continue;

					string test = line;
					string[] test_list = test.Split ();
					int size = Int32.Parse (test_list [0]);
					int[] int_list = new int[size];
					for (int i = 1; i < test_list.Length; i++) {
						int_list [i - 1] = Int32.Parse (test_list [i]);
					}
					int count = 0;
					int[] seq_list = new int[size - 1];
					for (int i = 0; i < int_list.Length - 1; i++) {
						seq_list [i] = Math.Abs (int_list [i] - int_list [i + 1]);
						if (seq_list [i] == 0)
							count++;
					}
					if (seq_list.Length == (int_list.Length - 1)) {
						for (int i = 0; i < seq_list.Length - 1; i++) {
							if (Math.Abs (seq_list [i] - seq_list [i + 1]) == 1)
								count++;
						}
					}
					if (count == (seq_list.Length - 1)) {
						Console.WriteLine ("Jolly");
					} else {
						Console.WriteLine ("Not jolly");
					}
				}
		}
	}
}
