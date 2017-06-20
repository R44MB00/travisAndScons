using System.IO;
using System;

class PalindromicRanges
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            int first = Int32.Parse(line.Split(' ')[0]);
            int last = Int32.Parse(line.Split(' ')[1]);
            int res = 0;

            for (int l = first; l <= last; l++)
            {
                for (int r = l; r <= last; r++)
                {
                    res += ParseRange (l,r);
                }
            }
        Console.WriteLine(res);
        }
    }

    static int ParseRange(int r1, int r2)
    {
        int pal = 0;

        for (int n = r1; n <= r2; n++)
        {
            if (IsPalindromic(n)) pal+=1;
        }

        if (IsEven(pal)) return 1;
        return 0;
    }

    static bool IsPalindromic (int num)
    {
        string NumStr = num.ToString();
        for (int c = 0; c < NumStr.Length/2; c++)
        {
             if (NumStr[c] != NumStr[NumStr.Length - 1 -c]) return false;
        }
        return true;
    }

    static bool IsEven(int num)
    {
        if (num % 2 == 0) return true;
        return false;
    }
}
