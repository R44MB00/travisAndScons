using System.IO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text.RegularExpressions;

class FollowingInteger
{

  static void Main(string[] args)
  {
    using (StreamReader reader = File.OpenText(args[0]))
    while (!reader.EndOfStream)
    {
        string line = reader.ReadLine();
        int[] ct1 = counter(line);
        int it = Int32.Parse(line) +1;

        while(true){

            if (compare(ct1, it)){
                break;
            }else{
                it += 1;
            }
        }
        Console.WriteLine(it);
    }
  }

  static bool compare(int[] ct1, int currNum){
    int[] ct2 = counter(currNum.ToString());
    for (int i = 1; i < 10;i++)
    {
      if (ct1[i]!=ct2[i])
      {
        return false;
      }
    }
    return true;
  }

  static int[] counter(string num){
    int[] ret = new int[10];
    foreach (char c in num){
      ret[(int)Char.GetNumericValue(c)] += 1;
    }
    return ret;
  }
}
