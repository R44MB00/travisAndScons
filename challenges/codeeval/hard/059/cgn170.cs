using System;
using System.IO;
using System.Collections;
using System.Collections.Generic;


namespace Application
{
	class MainClass
	{
		static Hashtable digits;
		static List<string> answer;
		public static void Main (string[] args)
		{
			digits = new Hashtable();
			answer = new List<string>();
			digits[0]="0";
			digits[1]="1";
			digits[2]="abc";
			digits[3]="def";
			digits[4]="ghi";
			digits[5]="jkl";
			digits[6]="mno";
			digits[7]="pqrs";
			digits[8]="tuv";
			digits[9]="wxyz";

			using (StreamReader reader = File.OpenText(args[0]))
				while (!reader.EndOfStream)
				{
					string line = reader.ReadLine();
					if (null == line)
						continue;
					telephone_words("",line);
					answer.Sort ();
					Console.WriteLine (string.Join(",",answer.ToArray()));
					answer.Clear();
				}

		}
		public static void telephone_words(String prefijo,String resto){
			if (resto.Length == 0) {
				answer.Add(prefijo);
				return;
			}
			String string_dig = digits[Int32.Parse(resto[0].ToString())].ToString();
			char[] univ = string_dig.ToCharArray ();
			for (int i = 0; i < univ.Length; i++) {
				int f = resto.Length;
				telephone_words(prefijo+univ[i].ToString(),resto.Substring(1));
			}
		}
	}
}
