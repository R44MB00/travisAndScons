using System;
using System.IO;

class AlternativeReality
{

  static void Main(string[] args)
  {

    int[] coin = new int[]{1, 5, 10, 25, 50};
    long[] count = createCount(coin, 100);

    using (StreamReader Reader = File.OpenText(args[0]))
    while (!Reader.EndOfStream)
    {
      string Line= Reader.ReadLine();
      Console.WriteLine(count[Int32.Parse(Line)]);
    }
  }
  static long[] createCount(int[] coin, int n)
  {
    long[] answer = new long[n+1];
    answer[0] = 1;
    int size = coin.Length;

    for (int i = 0; i < size; i++)
    {
      for (int j = coin[i]; j <= n; j++)
      {
        answer[j] += answer[j - coin[i]];
      }
    }
    return answer;
  }
}
