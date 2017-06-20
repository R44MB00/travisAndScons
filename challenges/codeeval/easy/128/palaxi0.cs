using System;
using System.IO;

class Program
{
    static void Main(string[] args)
    {
        String[] nums;
        int num = 0;
        var c = 0;
        string total= "";
        var lines = File.ReadLines((args[0]));
        foreach (var line in lines)
        {   
            int i = 0;
            total = "";
            nums = line.Split(' ');
            while (i < nums.Length)
            {
                c = 0;
                num = int.Parse(nums[i]);

                for (int j = i; j < nums.Length; j++){
                    if (num == (int.Parse(nums[j]))){ 
                        c++;
                    }else{
                        break;
                    }
                }
                total = total + c + " " + num + " ";
                i = i + c;
            }
            Console.WriteLine(total.Trim());
            Console.WriteLine();
        }
        Console.ReadKey();
    }

}