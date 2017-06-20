using System.IO;
using System.Collections.Generic;
class Program
    //string name;
{
    static void Main(string[] args)
    {   
        //String text = Console.ReadLine();
        //System.Console.WriteLine(text);
        //Console.Write("Enter your name: ");
        //name = Console.ReadLine();
        using (StreamReader reader = File.OpenText("./test_02"))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            System.Console.WriteLine(line.ToLower());
            if (null == line)
                continue;
            // do something with line
        }
    }
}
