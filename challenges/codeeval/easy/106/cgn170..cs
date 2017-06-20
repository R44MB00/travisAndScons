using System;
using System.IO;
using System.Collections;
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
					//String line="3525";//"159";
					SortedDictionary<int,string> n_romans =  new SortedDictionary<int,string>();
					n_romans.Add(1,"I");
					n_romans.Add(4,"IV");
					n_romans.Add(5,"V");
					n_romans.Add(9,"IX");
					n_romans.Add(10,"X");
					n_romans.Add(40,"XL");
					n_romans.Add(50,"L");
					n_romans.Add(90,"XC");
					n_romans.Add(100,"C");
					n_romans.Add(500,"D");
					n_romans.Add (400, "CD");
					n_romans.Add (900, "CM");
					n_romans.Add(1000,"M");
					n_romans.Add (3999, "MMMCMXCIII");
					int val = Int32.Parse (line);
					int anterior = 0;
					String answer = "";
					while(val>0){
						if (n_romans.ContainsKey(val)){
							answer += n_romans [val];
							val=0;
							break;
						}
						foreach (int key in n_romans.Keys)
						{
							if (key > val ) {
								val =val-anterior;
								answer += n_romans [anterior];
								break;
							} else {
								anterior = key;			
							}
						}
					}
					Console.WriteLine (answer);
				}
		}
	}
}
