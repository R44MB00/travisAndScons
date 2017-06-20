using System;
using System.IO;
using System.Collections.Generic;

	public class aplication
	{
		static void Main(string[] args)
		{
			using (StreamReader reader = File.OpenText("/home/camilo/test_16"))
				while (!reader.EndOfStream)
				{
					string line = reader.ReadLine();
					if (null == line)
						continue;
				var nums = new List<string>(line.Split(' '));
				var outp = new List<object>();
				string result = "";
				foreach (var aa in nums) {
					outp.Add(float.Parse(aa));
				}
				outp.Sort ();
				foreach (var sa in outp) {
					if (result.Length == 0) {
						result = "" + sa;
					} else {
						result = result + " " + sa;
					}
				
				}
				System.Console.WriteLine (result);
			}
	}
}

