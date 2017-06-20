using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
 
class Program
{
    static void Main(string[] args)
    {
        StreamReader reader = new StreamReader(args[0]);
        List<string> lines = new List<string>();
         
 
        using (reader)
        {
            string line = reader.ReadLine();
 
            while (line != null)
            {
                if (!(String.IsNullOrEmpty(line) || String.IsNullOrWhiteSpace(line)))
                {
                    line.Trim(new char[] { '\r', ' ', '\t' });
                    lines.Add(line);
                }
                line = reader.ReadLine();
            }
        }
 
        int length = lines.Count;
        int numberOfResults = Convert.ToInt32(lines[0]);
 
        IEnumerable<string> results =
            from result in lines
            orderby result.Length descending
            select result;
 
        for (int i = 0; i < numberOfResults; i++)
        {
            Console.WriteLine(results.ElementAt(i));
        }
    }
}
