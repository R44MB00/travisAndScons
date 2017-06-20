using System;
using System.IO;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
        var lines = File.ReadLines(("C:\\Users\\smunoz\\Desktop\\CodeEval\\test.txt"));
        String[] nums;
        int n = 0;
        var cont = 0;
        string suma= "";
        //var lines = File.ReadLines((args[0]));
        foreach (var line in lines)
        {   
            suma = "";
            nums = line.Split(' ');
            int i = 0;
            while (i < nums.Length)
            {
                cont = 0;
                n = int.Parse(nums[i]);

                for (int j = i; j < nums.Length; j++)
                {
                    if (n == (int.Parse(nums[j])))
                    {
                        
                        cont++;
                    }
                    else
                    {
                        
                        break;
                    }

                    
                }
                suma = suma + cont + " " + n + " ";
                i = i + cont;
      
            }
            Console.WriteLine(suma.Trim());
            Console.WriteLine();

        }
        Console.ReadKey();


    }


}
