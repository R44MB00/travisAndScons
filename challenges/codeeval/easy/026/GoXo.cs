using System.IO;
using System;
using System.Text;
class file_Size
{
    static void Main(string[] args)
    {   
        int len = 0;
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string file_line = reader.ReadLine();
            len += file_line.Length+1;
        }
        Console.WriteLine(len);
    }
}
