using System.IO;

namespace ConsoleApplication1
{
    class SumOfDigits
    {
        public static void Main1(string[] Args)
        {
            int suma;
            using (StreamReader reader = new StreamReader(Args[0]))
                while (!reader.EndOfStream)
                {
                    string strLinea = reader.ReadLine();
                    if (null == strLinea)
                        continue;
                    suma = 0;
                    foreach (char Char in strLinea.ToCharArray())
                    {
                        suma += (int.Parse("" + Char));
                    }
                    System.Console.WriteLine(suma);
                }
        }
    }
}
