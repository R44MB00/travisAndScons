using System;
using System.IO;
using System.Collections.Generic;
using System.Collections;

class TrailingStrings
{
	public static void Main( string[] args )
	{

		using (StreamReader reader = File.OpenText(args[0]))
		while(!reader.EndOfStream)
		{
			Dictionary<int, int> dict = new Dictionary<int, int>();
			string line = reader.ReadLine();
			if (null == line)
				continue;

			string[] words = line.Split(' ');
			int[] nums = new int[words.Length];
			int[] nums_not_sorted = new int[words.Length];
			int num;
			for(int i = 0; i < words.Length; i++)
			{
				if (Int32.TryParse(words[i], out num))
    				nums[i] = num;
    				nums_not_sorted[i] = num;
			}
			
			Array.Sort(nums);
			foreach(int val in nums)
			{
				if(dict.ContainsKey(val))
					dict[val]++;
				else
					dict[val] = 1;
			}
			int index = 0;
			int flag = 0;
			foreach(var pair in dict)
			{
				if(pair.Value == 1)
				{
					flag = 1;
					index = Array.IndexOf(nums_not_sorted, pair.Key) + 1;
					Console.WriteLine(index);
					break;
				}

			}

			if(flag == 0)
				Console.WriteLine(0);

			flag = 0;
			dict = new Dictionary<int, int>();
		}
	}
}