// DELTA TIME CESAR E CARDONA //
using System.IO;
using System.Collections.Generic;

    class ProgramaDelta
        {
            static void Main(string[] args)
            {
                using (StreamReader reader = File.OpenText(args[0]))
                while (!reader.EndOfStream)
                {
                    string line = reader.ReadLine();
                        if(null == line)
                        continue;
                    string[] times  = line.Split(' ');
                            System.DateTime endTime = System.DateTime.Parse(times[0]);
                            System.DateTime starTime = System.DateTime.Parse(times[1]);
                            System.TimeSpan timeDiff = endTime - starTime;
                            System.Console.WriteLine(timeDiff.Duration());
                }            
            }                
        }
// FIN PROGRAMA DELTA TIME//
