using System;
using System.IO;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
		FileInfo f = new FileInfo(args[0]);
		Console.WriteLine(f.Length);
    }
}
