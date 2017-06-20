using System.IO;
using System.Collections.Generic;
using System;

class Program
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
            string[] time = line.Split(' ');
            string auxiliar = "";
            for (int i = time.Length - 1; i > 0; i--) {
                for (int j = 0; j < i; j++) {
                    if (System.Convert.ToDateTime(time[j]) < System.Convert.ToDateTime(time[j+1])) {
                        auxiliar = time[j];
                        time[j] = time[j+1];
                        time[j+1] = auxiliar;
                    }
                }
            }
            foreach (string s in time) {
                System.Console.Write(s + " ");
            }
            System.Console.WriteLine("");
        }
    }
}
