using System;
using System.IO;
using System.Collections;

class StraightLines
{

  static void Main(string[] args)
  {
    using (StreamReader Reader = File.OpenText(args[0]))
    while (!Reader.EndOfStream)
    {
      string Line = Reader.ReadLine();
      string[] Ps = Line.Split('|');
      int n = Ps.Length;
      int x1, y1, x2, y2, x3, y3;
      int count = 0;

      for (int i = 0; i < n; i++)
      {
        string[] Points = Ps[i].Trim().Split(' ');
        x1 = Int32.Parse(Points[0]);
        y1 = Int32.Parse(Points[1]);

        for (int j = i + 1; j < n; j++)
        {
            Points = Ps[j].Trim().Split(' ');
            x2 = Int32.Parse(Points[0]);
            y2 = Int32.Parse(Points[1]);

          for (int k = 0; k < n; k++)
          {
            if (k == i) continue;
            if (k == j) continue;
              Points = Ps[k].Trim().Split(' ');
              x3 = Int32.Parse(Points[0]);
              y3 = Int32.Parse(Points[1]);

            if (Collinear(x1, y1, x2, y2, x3, y3))
            {
              if (k > j) count += 1;
              break;
            }
          }
        }
      }
      Console.WriteLine(count);
    }
  }
  static bool Collinear(int x1, int y1, int x2, int y2, int x3, int y3)
  {

    if (( (y2 - y1)* (x3 - x2) ) == ((y3 - y2) * (x2 - x1))) return true;
    else return false;
  }
}
