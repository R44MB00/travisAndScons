using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

class Program
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line){
                continue;}
                
            int num = Int32.Parse(line);
            int fives = 0;
            int threes = 0;
            int ones = 0;
            while (num > 0)
            {
                if (num / 5 > 0)
                {
                    fives += num / 5;
                    num -= fives*5;
                }
                if (num / 3 > 0)
                {
                    threes += num / 3;
                    num -= threes * 3;
                }
                if (num / 1 > 0)
                {
                    ones += num;
                    num -= ones;
                }
            }
            Console.WriteLine(fives+threes+ones);
            Console.ReadKey();
        }
        
    }
    
}