using System.IO;
using System.Collections.Generic;
using System;
class Program
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            string[] nums = line.Split(' ');
            int Fizz = Int32.Parse(nums[0]);
            int Buzz = Int32.Parse(nums[1]);
            int Loop = Int32.Parse(nums[2]);
                for (int i = 1; i <= Loop; i++){
                    if (i%Fizz==0){
                         Console.Write("F");
                         if(i%Buzz==0) Console.Write("B");
                        } 
                    else if(i%Buzz==0) Console.Write("B");
                    else Console.Write(i);
                    Console.Write(" ");
                }
            if (null == line)
                continue;
            Console.WriteLine();
        }
    }
}
