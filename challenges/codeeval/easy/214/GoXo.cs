using System.IO;
using System;
class time_to_eat
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            string[] parts = line.Split(' ');
            Array.Sort(parts);
            Array.Reverse(parts);
            Console.WriteLine(string.Join(" ",parts));
        }
    }
}