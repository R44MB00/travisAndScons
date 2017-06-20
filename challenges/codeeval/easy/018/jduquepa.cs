using System.IO;

namespace ConsoleApplication1
{
    class MultiplesOfNumber
    {
        public static void Main1(string[] Args)
        {
            int x;
            string[] xy;
            using (StreamReader reader = new StreamReader(Args[0]))
                while (!reader.EndOfStream)
                {
                    string strLinea = reader.ReadLine();
                    if (null == strLinea)
                        continue;

                    xy = strLinea.Split(',');
                    x = int.Parse(xy[0]) + 1;
                    while (true)
                    {
                        if (x % int.Parse(xy[1]) == 0)
                            break;
                        else
                            x++;
                    }
                    System.Console.WriteLine(x);
                }
        }
    }


}
