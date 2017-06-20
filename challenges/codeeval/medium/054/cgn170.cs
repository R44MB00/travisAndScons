using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;

namespace Application
{
	class MainClass
	{
		public static void Main (string[] args)
		{
			var change_list = new Dictionary<double, string>();
			change_list.Add ( 0.01,"PENNY");
			change_list.Add (0.05,"NICKEL");
			change_list.Add (0.10,"DIME");
			change_list.Add (0.25,"QUARTER");
			change_list.Add (0.50,"HALF DOLLAR");
			change_list.Add (1.00, "ONE");
			change_list.Add (2.00,"TWO");
			change_list.Add (5.00,"FIVE");
			change_list.Add (10.00,"TEN");
			change_list.Add (20.00,"TWENTY");
			change_list.Add (50.00,"FIFTY");
			change_list.Add (100.00,"ONE HUNDRED");

			var change_list_order = change_list.Keys.ToList ();
			var answer = new List<string> ();


			using (StreamReader reader = File.OpenText(args[0]))
				while (!reader.EndOfStream)
				{
					string line = reader.ReadLine();
					if (null == line)
						continue;
					
					string[] list_test = line.Split (';');
					double pp = Double.Parse (list_test [0]);
					double ch = Double.Parse (list_test [1]);

					if (pp.CompareTo (ch) > 0) {
						Console.WriteLine ("ERROR");
					} else {
						if (pp.CompareTo (ch) == 0) {
							Console.WriteLine ("ZERO");
						} else {
							double change = Math.Round (ch - pp, 2);	
							while (change > 0) {
								double tempk = 0.01;
								string tempv = "PENNY";
								foreach (var key in change_list_order) {
									//Console.WriteLine (key);
									if (key.CompareTo (change) == 0) {
										answer.Add (change_list [key]);
										change = Math.Round (change - key, 2);
										break;
									} else {
										if (key.CompareTo (change) > 0) {
											answer.Add (tempv);
											change = Math.Round (change - tempk, 2);
											break;
										}							
									}
									tempk = key;
									tempv = change_list [key];
									if (key.CompareTo (100) == 0) {
										answer.Add (tempv);
										change = Math.Round (change - 100, 2);
									}
								}

							}
							Console.WriteLine (String.Join (",", answer));
						}
						answer.Clear ();
					}
				}		
		}
	}
}
