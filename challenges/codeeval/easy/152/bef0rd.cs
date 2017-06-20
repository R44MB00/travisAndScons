using System.IO;
using System;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
			
            int edad = Int32.Parse(line);
            if (edad >= 0 && edad <= 2)
                    Console.WriteLine("Still in Mama's arms");
            else
                if (edad >= 3 && edad <= 4)
                    Console.WriteLine("Preschool Maniac");
                else
                    if (edad >= 5 && edad <= 11)
                        Console.WriteLine("Elementary school");
                    else 
                        if (edad >= 12 && edad <= 14)
                            Console.WriteLine("Middle school");
                        else
                            if (edad >= 15 && edad <= 18)
                                Console.WriteLine("High school");
                            else
                                if (edad >= 19 && edad <= 22)
                                    Console.WriteLine("College");
                                else
                                    if (edad >= 23 && edad <= 65)
                                        Console.WriteLine("Working for the man");
                                    else
                                        if (edad >= 66 && edad <= 100)
                                            Console.WriteLine("The Golden Years");
                                        else
                                            Console.WriteLine("This program is for humans");
        
        }
    }	
}
