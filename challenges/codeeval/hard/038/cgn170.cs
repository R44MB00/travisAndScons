using System;
using System.IO;
using System.Linq;
using System.Collections;
using System.Collections.Generic;

namespace Application
{
	class MainClass
	{
		static int gsize=0;
		static List <String> answer_list=new List<String>();

		public static void Main (string[] args)
		{
			using (StreamReader reader = File.OpenText(args[0]))
				while (!reader.EndOfStream)
				{
					string line = reader.ReadLine();
					if (null == line)
						continue;
					String[] test = line.Split(',');
					int size = Int32.Parse (test [0]);
					gsize = size;
					char[] u_s = test[1].Substring(0,size).ToCharArray();
					u_s=u_s.Distinct().ToArray();
					combinatoria (u_s, "", size);
					answer_list.Distinct ();
					answer_list.Sort ();
					Console.WriteLine (String.Join(",",answer_list.ToArray()));
					answer_list.Clear ();
				}
		}
		static void combinatoria(char[] u_s,String line,int size){
			if (line.Length == gsize) {
				answer_list.Add(line);
				return;
			} else {
				int j = 0;
				do{
					combinatoria (u_s,line+u_s[j],size-line.Length);
					j+=1;
				}while(j<u_s.Length);			
			}
		}
	}
}
