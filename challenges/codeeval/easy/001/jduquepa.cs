using System.IO;
using System.Collections.Generic;
namespace ConsoleApplication1
{
    class FizzBuzz
    {
        static void Main2(string[] args)
        {
            string space;
            string output = "";
            bool first = true;
            using (StreamReader reader = File.OpenText(args[0]))
                while (!reader.EndOfStream)
                {
                    space = "";
                    string outputLine = "";
                    string line = reader.ReadLine();
                    if (line == null)
                        continue;
                    string[] values = line.Split(' ');
                    int X = int.Parse(values[0]);
                    int Y = int.Parse(values[1]);
                    for (int i = 1; i <= int.Parse(values[2]); i++)
                    {
                        string outputNumber = string.Empty;
                        if (i % X == 0)
                            outputNumber += "F";
                        if (i % Y == 0)
                            outputNumber += "B";
                        if (string.IsNullOrEmpty(output))
                            outputNumber = i.ToString();

                        outputLine += space + outputNumber;
                        space = " ";
                    }
                    if (!first)
                        output += System.Environment.NewLine;
                    output += outputLine;
                    first = false;

                }
            System.Console.Write(output);
        }
    }
}
