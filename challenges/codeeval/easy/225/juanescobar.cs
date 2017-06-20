using System.IO;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
        int Low = 2;
        int Medium = 4;
        int High = 6;
        int Critical = 7;
        int Done = 0;

        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
            string[] data = line.Split('|');
            string dev = data[0].Trim();
            string dsg = data[1].Trim();
            int bugs = 0;
            for (int i=0; i < dev.Length; i++) 
            {
                if (dev[i]!=dsg[i]) 
                {
                    bugs += 1;
                }
            }

            if (bugs > 0 && bugs <= Low) 
            {
                System.Console.WriteLine("Low");    
            } else if (bugs > Low && bugs <= Medium) {
                System.Console.WriteLine("Medium"); 
            } else if (bugs > Medium && bugs <= High) {
                System.Console.WriteLine("High"); 
            } else if (bugs >= Critical) {
                System.Console.WriteLine("Critical"); 
            } else if (bugs == Done) {
                System.Console.WriteLine("Done"); 
            }
            
        }
    }
}
