using System;
using System.IO;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine((new FileInfo(args[0])).Length.ToString());
    }
}
