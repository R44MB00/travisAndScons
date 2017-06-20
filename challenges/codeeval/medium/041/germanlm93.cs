using System;

namespace ArrayAbsuridity.cs
{
	class MainClass
	{
		public static void Main (string[] args){
			String line = "5;0,1,2,3,0";
			int n = int.Parse (line.Split (';')[0]);
			String[] list = line.Split (';') [1].Split(',');
			for (int i = 0; i < list.Length - 1; i++) {
				for (int j = i+1; j < list.Length; j++) {
					if (list[i] == list[j]) {
						Console.WriteLine(list[i]);
						break;
					}
				}
			}
		}
	}
}
