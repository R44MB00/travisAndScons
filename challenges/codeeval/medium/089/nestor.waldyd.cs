using System;
using System.IO;
//using C5;
using System.Collections.Generic;

namespace Pass_Triangle
{
	class MainClass
	{
		public static void Main (string[] args)
		{	
			//ArrayList<int[]> triangle = new ArrayList<int[]>();
			List<int[]> triangle = new List<int[]>();
			string inputLine;
			string [] inputValues; 
			int[] inputValuesInt;
			using (StreamReader reader = File.OpenText(args[0]))
				while (!reader.EndOfStream)
				{
					inputLine = reader.ReadLine();
					if (null == inputLine) continue;
					inputValues = inputLine.Split((char[]) null, StringSplitOptions.RemoveEmptyEntries);
					inputValuesInt = Array.ConvertAll(inputValues, element => Int32.Parse(element));
					triangle.Add(inputValuesInt);
				}
			maxValue (triangle.Count, triangle);
		}
		public static void maxValue(int n, List<int[]> tree) {
			for (int i = n - 2; i >= 0; i--) {
				for (int j = 0; j <= i; j++) {
					if(tree[i + 1][j] > tree[i + 1][j + 1]) 
						tree[i][j] = tree[i + 1][j] + tree[i][j];
					else
						tree[i][j] = tree[i + 1][j + 1] + tree[i][j];
				}
			}
			Console.WriteLine(tree[0][0]);
		}
	}
}

/*
 * using System;
using System.IO;
//using System.Linq;
//using System.Collections.Generic;
//using System.Collections;
using C5;

 * public static void Main (string[] args)
		{	
			//int sum = 0;
			ArrayList<int[]> triangle = new ArrayList<int[]>();
			//ArrayList<int[]> triangletemp = new ArrayList<int[]>();
			string inputLine;
			string [] inputValues; 
			int[] inputValuesInt;
			//, outputValuesInt, temp;
			//List<int> index = new List<int>();
			using (StreamReader reader = File.OpenText(args[0]))
				while (!reader.EndOfStream)
				{
					inputLine = reader.ReadLine();
					if (null == inputLine) continue;
					inputValues = inputLine.Split((char[]) null, StringSplitOptions.RemoveEmptyEntries);
					inputValuesInt = Array.ConvertAll(inputValues, element => Int32.Parse(element));
					//temp = Array.ConvertAll(inputValues, element => Int32.Parse(element));
					triangle.Add(inputValuesInt);
					//triangletemp.Add(temp);
					//PrintValues(triangle);
					//Console.WriteLine(triangle.Last()[0]);
					//Console.WriteLine(triangle.Last().ToList().ToString());
					//Console.WriteLine(triangle.First()[0]+" : "+triangle.Last()[0]);
					//Console.WriteLine(triangle.Count()+" : "+count);
					//Console.WriteLine(triangle.Count);
				}
			maxValue (triangle.Count, triangle);
			//ArrayList<int[]> triangletemp = triangle.ConvertAll(elements => new int[](elements));

		}
		bool rewind = false;
			for (int line =1; line <=triangle.Count; line++){
				if (line == 1) index.Add(0);
				if (line > 1) {
					outputValuesInt = Array.ConvertAll (triangle[line-1], x => x + triangle [line - 2] [index [line - 2]]);
					if(!rewind) index.Add(Array.IndexOf (outputValuesInt, outputValuesInt.Max ()));

					bool checkPath = true;
					while (checkPath) {
						if (index [line - 1] == index [line - 2] | index [line - 1] == (index [line - 2] + 1)) {
							checkPath = false;
							rewind = false;
						}
						else {
							//int tempLine=0, tempIndex=0;
							if ((index [line - 1] - index [line - 2]) < 0) {
								line += (index [line - 1] - index [line - 2]);
								index [line - 1] -= 1;
							}
							else if ((index [line - 1] - index [line - 2]) > 1) {
								line -= (index [line - 1] - index [line - 2])-1;
								index [line - 1] += 1;
//								tempLine = line - ((index [line - 1] - index [line - 2])-1);
//								tempIndex = index [tempLine - 1]+1;
//								if (triangle [tempLine - 1] [tempIndex-1] < triangle [tempLine - 1] [tempIndex]) {
//									line -= (index [line - 1] - index [line - 2]) - 1;
//									index [line - 1] += 1;
//								} else{
//									triangle [tempLine] [index[tempLine]] = 0;
//									line = tempLine;
//								}
							}

							checkPath=false;

							//triangle [line - 1] [index [line - 1]] = 0;  // TO DO: Find better solution!
							//line -= 1;
							//index.RemoveAt (line-1);
							index.RemoveRange (line, index.Count - line);
							//rewind = true;
						}
					}
				}
				//if (!rewind) sum += triangle[line-1][index[line - 1]];
				//Console.WriteLine(sum);
			//Console.Write(sum);
			}
			for (int line =1; line <= triangle.Count; line++) sum += triangletemp[line-1][index[line-1]];
			Console.Write(sum);
*/
