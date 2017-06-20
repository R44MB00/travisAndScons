using System.IO;
namespace ConsoleApplication1
{
    class FibonacciSeries
    {
        public static void Main1(string[] Args)
        {
            //using (StreamReader reader = new StreamReader("C:\\TEMP\\TextFile1.txt"))
            using (StreamReader reader = new StreamReader(Args[0]))
                while (!reader.EndOfStream)
                {
                    string strLinea = reader.ReadLine();
                    if (null == strLinea)
                        continue;
                    int a = 0;
                    int b = 1;
                    for (int i = 0; i < int.Parse(strLinea); i++)
                    {
                        int temp = a;
                        a = b;
                        b = temp + b;
                    }
                    System.Console.WriteLine(a);
                }
            System.Console.Read();

        }
    }

}
