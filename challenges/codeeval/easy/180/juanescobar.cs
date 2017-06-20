using System;
using System.IO;
using System.Collections.Generic;

class Program
{
    static char[] rowx = {'a','b','c','d','e','f','g','h'};
    static char[] rowy = {'1','2','3','4','5','6','7','8'};

    static string parse(int[] cards) {
        int x = cards[0];
        int y = cards[1];
        if (x < 0 || y < 0 || x > 7 || y > 7) return "";

        return rowx[x].ToString() + rowy[y].ToString();
    }

    static void Main(string[] args)
    {
       
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;

            int x = Array.IndexOf(rowx, line[0]);
            int y = Array.IndexOf(rowy, line[1]);

            int[] p1 = {x+1, y+2};
            int[] p2 = {x+2, y+1};
            int[] p3 = {x+2, y-1};
            int[] p4 = {x+1, y-2};
            int[] p5 = {x-1, y-2};
            int[] p6 = {x-2, y-1};
            int[] p7 = {x-2, y+1};
            int[] p8 = {x-1, y+2};

            List<string> lista = new  List<string>();
            if (parse(p1) != "") lista.Add(parse(p1)); 
            if (parse(p2) != "") lista.Add(parse(p2)); 
            if (parse(p3) != "") lista.Add(parse(p3)); 
            if (parse(p4) != "") lista.Add(parse(p4)); 
            if (parse(p5) != "") lista.Add(parse(p5)); 
            if (parse(p6) != "") lista.Add(parse(p6)); 
            if (parse(p7) != "") lista.Add(parse(p7)); 
            if (parse(p8) != "") lista.Add(parse(p8)); 
            
            string[] array = lista.ToArray();
            Array.Sort(array);
            
            string output = "";
            for (int i=0; i < array.Length; i++) 
            {
                output += array[i] + " ";
            }

            System.Console.WriteLine(output.Trim());
        }
    }
}
