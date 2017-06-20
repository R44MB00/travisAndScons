using System;
using System.IO;
using System.Collections.Generic;

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
                lines.Add(line);
                line = reader.ReadLine();
            }
        }

        for (int i = 0; i < lines.Count; i++)
        {
            string[] splitLine = lines[i].Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
            char character = Convert.ToChar(splitLine[1]);
            string words = splitLine[0];
            bool contains = words.Contains(character.ToString());

            if (contains == true)
            {
                int index = words.LastIndexOf(character);
                Console.WriteLine(index);
            }
            else
            {
                Console.WriteLine("-1");
            }
        }
    }
}
