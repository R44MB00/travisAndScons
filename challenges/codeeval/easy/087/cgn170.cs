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
			int[,] board = new int[256, 256];
			int x = 0;
			int x_val = 0;
			int y = 0;
			int y_val = 0;
			int sum = 0;
			using (StreamReader reader = File.OpenText(args[0]))
				while (!reader.EndOfStream)
				{
					string line = reader.ReadLine();
					if (null == line)
						continue;
					String[] query = line.Split ();
					switch (query [0]) {
					case "SetRow":
						//Console.WriteLine ("SetRow!!!!!!!!!!");
						x = Int32.Parse (query [1]);
						x_val = Int32.Parse (query [2]);
						for(int j=0;j<256;j++){
							board [x,j] = x_val;
						}
							break;
					case "SetCol":
						y = Int32.Parse (query [1]);
						y_val = Int32.Parse (query [2]);
						for(int i=0;i<256;i++){
							board [i,y] = y_val;
						}
							break;
					case "QueryRow":
						sum = 0;
						x = Int32.Parse (query [1]);
						for(int j=0;j<256;j++){
							sum+=board [x,j];
						}
						Console.WriteLine (sum.ToString());
							break;
					case "QueryCol":
						sum = 0;
						y = Int32.Parse (query [1]);
						for (int i = 0; i < 256; i++) {
							sum += board [i,y];
						}
						Console.WriteLine (sum.ToString());
							break;
					}
				}
		}
	}
}
