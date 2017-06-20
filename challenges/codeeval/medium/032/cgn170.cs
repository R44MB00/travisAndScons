using System.IO;
using System.Collections.Generic;
using System.Text.RegularExpressions;

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
		string[] words=line.Split(',');
		Regex regex = new Regex(@words[1]+"$");
		Match match = regex.Match(words[0]);
		if (match.Success){
		    System.Console.WriteLine(1);
		}
		else {
		    System.Console.WriteLine(0);
		}
        }
    }
}
