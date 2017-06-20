using System;
using System.IO;
using System.Collections;

class LargestSubMatrix
{
  static int n = 0;
  static int ct = 0;

  static void Main(string[] args)
  {
    string[][] matrix = new string[0][];

    using (StreamReader Reader = File.OpenText(args[0]))
    while (!Reader.EndOfStream)
    {
      string Rows= Reader.ReadLine();
      string[] Cols = Rows.Split(' ');
    
      if (ct == 0) {
        n = Cols.Length;
        matrix = new string[n][];
      }

      matrix[ct] = Cols;
      ct += 1;
    }
    MaxSubMatSum(matrix);
  }

  static void MaxSubMatSum(string[][] mat)
  {
    int curr;
    int max = -101;

    for (int l = 0; l < n; l++)
    {
      int[] temp = new int[n];

      for (int r = l; r < n; r++)
      {
        for (int i = 0; i < n; i++)
        {
          temp[i] += Int32.Parse(mat[i][r]);
        }

        curr = Kadane(temp);
     
        if (curr > max) max = curr;
      }
    }
    Console.WriteLine(max);
  }

  static int Kadane(int[] array)
  {
    int res = -101;
    int curr = 0;

    for (int i = 0; i < n; i++)
    {
      curr += array[i];
      if (curr > res) res = curr;
      if (curr < 0) curr = 0;
    }
    return res;
  }
}
