using System;
using System.IO;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
        var lines = File.ReadLines(("C:\\Users\\smunoz\\Desktop\\CodeEval\\test.txt"));
        String[] nums,mat;
        String[,] matriz,MatrizRotada;
        int tam,x;
        //var lines = File.ReadLines((args[0]));
        foreach (var line in lines)
        {
            nums = line.Split(' ');
            
            x = 0;
            tam = (int)((Math.Sqrt(nums.Length)));
            matriz = new String[tam, tam];
            mat = new String[nums.Length];
            MatrizRotada = new String[tam, tam];
            for (int i = 0; i < tam; i++)
            {
                for (int j = 0; j < tam; j++)
                {
                    matriz[i, j] = nums[x];
                    x++;
                }

            }

            for (int i = 0; i < tam; ++i)
            {
                for (int j = 0; j < tam; ++j)
                {
                    MatrizRotada[i, j] = matriz[tam - j - 1, i];
                }
            }
            x = 0;
            for (int i = 0; i < tam; ++i)
            {
                for (int j = 0; j < tam; ++j)
                {
                    mat[x] = MatrizRotada[i, j];
                    x++;
                }
            }

            Console.WriteLine(String.Join(" ",mat));
        }
        Console.ReadKey();


    }


}
