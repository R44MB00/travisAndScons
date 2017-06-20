using System.IO;
using System;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine(new System.IO.FileInfo(args[0]).Length);
    }
	
}
