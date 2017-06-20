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
			string[] ele=line.Split(',');
			string binary = Convert.ToString(Int32.Parse(ele[0]), 2);
			if(binary[binary.Length-Int32.Parse(ele[1])]==binary[binary.Length-Int32.Parse(ele[2])]){
				Console.WriteLine("true");
			}else{
				Console.WriteLine("false");
			}

        }
    }
}
