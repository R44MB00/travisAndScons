
using System.IO;
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
                string[] nums = line.Split(';')[0].Split(',');
                int num = int.Parse(line.Split(';')[1]);

                string cadena = "";

                for (int i = 0; i < nums.Length - 1; i++)
                {
                    for (int j = i + 1; j < nums.Length; j++)
                    {
                        int aux1 = int.Parse(nums[i]) + int.Parse(nums[j]);
                        if (aux1 == num)
                        {
                            cadena = string.Concat(cadena, nums[i].ToString(), ",", nums[j].ToString(), ";");
                        }
                    }
                }

                if (cadena != "")
                {
                    char[] chars = { ';' };
                    System.Console.WriteLine(cadena.Trim(chars));
                }
                else
                {
                    System.Console.WriteLine("NULL");
                }
            }
    }
}
