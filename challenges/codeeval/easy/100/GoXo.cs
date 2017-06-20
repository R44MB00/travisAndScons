using System.IO;
using System.Collections.Generic;
using System;
class even_Numbers
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            int number = Int32.Parse(line);
            if (number%2==0){
                Console.WriteLine(1); 
            }else{
                Console.WriteLine(0); 
            }
        }
    }
}