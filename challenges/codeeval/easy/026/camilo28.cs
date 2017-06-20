using System.IO;
using System.Collections.Generic;
class Program

{
    static void Main(string[] args)
    {

        System.Console.Write("Please enter the route to the file: ");
        string file = System.Console.ReadLine();
        long size = new System.IO.FileInfo(file).Length;
        System.Console.WriteLine(size);
    }
}
