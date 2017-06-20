using System;
using System.IO;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
		long length = new System.IO.FileInfo(args[0]).Length;
		Console.WriteLine(length);
	}
}