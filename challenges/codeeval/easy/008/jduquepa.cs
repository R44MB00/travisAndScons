using System.IO;

namespace ConsoleApplication1
{
    class ReverseWords
    {
        public static void Main1(string[] Args)
        {
            string strAllword = "";
            string strReverseLine;
            string[] strWords;
            using (StreamReader reader = File.OpenText(Args[0]))
                while (!reader.EndOfStream)
                {
                    string strLinea = reader.ReadLine();
                    if (null == strLinea)
                        continue;
                    strWords = strLinea.Split(' ');
                    strReverseLine = "";
                    for (int i = strWords.Length - 1; i >= 0; i--)
                    {
                        strReverseLine += ((strReverseLine.Length > 0) ? " " : "") + strWords[i];
                    }
                    strAllword += ((strAllword.Length > 0) ? System.Environment.NewLine : "") + strReverseLine;
                }
            System.Console.WriteLine(strAllword);
        }
    }
}
