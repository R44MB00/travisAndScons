using System;
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
            string[] l = line.Split(';');
			string[] p1 = l[0].Trim().Substring(9,l[0].Length-9-1).Split(',');
			string[] p2 = l[2].Trim().Substring(8).Replace(")","").Split(',');
			double rad = Convert.ToDouble(l[1].Substring(8));
			double x1=Convert.ToDouble(p1[0].Trim());
			double y1=Convert.ToDouble(p1[1].Trim());
			double x2=Convert.ToDouble(p2[0].Trim());
			double y2=Convert.ToDouble(p2[1].Trim());
			if (Math.Sqrt(Math.Pow(x2-x1,2)+Math.Pow(y2-y1,2))>rad){
				Console.WriteLine("false");
			}else{
				Console.WriteLine("true");
			}
        }
    }
}
