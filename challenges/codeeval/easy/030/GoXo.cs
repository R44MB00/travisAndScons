using System.IO;
using System;
using System.Linq;
using System.Text.RegularExpressions;
using System.Collections;
class lowest_unique
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            string[] parts = line.Split(';');
            string[] nums0 = Regex.Split(parts[0], @"\D+");
            string[] nums1 = Regex.Split(parts[1], @"\D+");
            var intersect = nums0.Intersect(nums1);
            var result = string.Join(",", intersect);
            Console.WriteLine(result);
        }
    }
}