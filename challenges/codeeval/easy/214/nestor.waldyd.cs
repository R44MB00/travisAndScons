/*Sample code to read in test cases:
using System.IO;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
            // do something with line
        }
    }
}*/

using System;
using System.IO;
using System.Collections.Generic;

namespace TIME_TO_EAT
{
	class MainClass
	{
		public static void Main (string[] args)
		{
			string[] stringSeparator = new string[] {" "};
			var timestampList = new List<DateTime>();

			if (File.Exists(args [0])) {
				StreamReader inputFile = new StreamReader(args[0]);
				string inputLine;

				while((inputLine = inputFile.ReadLine()) != null)
				{
					string[] inputTimeStamps = inputLine.Split (stringSeparator, StringSplitOptions.RemoveEmptyEntries);
					string[] timeSeparator = new string[] {":"};
					int hh, mm, ss;
					for (int i = 0; i < inputTimeStamps.Length; i++) {
						//Console.WriteLine (inputTimeStamps[i]);
						string[] inputTime = inputTimeStamps[i].Split (timeSeparator, StringSplitOptions.RemoveEmptyEntries);
						Int32.TryParse(inputTime[0], out hh);
						Int32.TryParse(inputTime[1], out mm);
						Int32.TryParse(inputTime[2], out ss);
						timestampList.Add(new DateTime(1,1,1,hh, mm, ss));
						timestampList = Sort (timestampList);

					}
					Display (timestampList);
					timestampList.Clear();
					
				}
			}
		}

		static List<DateTime> Sort(List<DateTime> list)
		{
			list.Sort((a, b) => b.CompareTo(a));
			return list;
		}

		static void Display(List<DateTime> list) {
			
			foreach (var datetime in list) {
				int numberLenght = 2;
				Console.Write(String.Concat(datetime.Hour.ToString("D" + numberLenght.ToString()),":",
											datetime.Minute.ToString("D" + numberLenght.ToString()),":",
											datetime.Second.ToString("D" + numberLenght.ToString()), " "));
			}
			Console.WriteLine();
		}

	}
}
