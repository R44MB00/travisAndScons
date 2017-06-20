using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;


    class Program
    {
        static void Main(string[] args)
        {
            var lines = File.ReadLines(args[0]);

            foreach (var line in lines)
            {
                var pString = line.Split(' ');
                int n = pString.Length;

                var xC = new int[n];
                var yC = new int[n];

                for (int i = 0; i < n; i++)
                {
                    var map_coords = pString[i].Split(',');
                    xC[i] = int.Parse(map_coords[0]);
                    yC[i] = int.Parse(map_coords[1]);
                }

                var distances = new List<double>();

                for (int i = 0; i < n; i++)
                {
                    for (int j = i + 1; j < n; j++)
                    {
                        var x = xC[i] - xC[j];
                        var y = yC[i] - yC[j];
                        var distance = Math.Sqrt(x * x + y * y);
                        distances.Add(distance);
                    }
                }

                distances.Sort();
                var total = distances.Take(n - 1).Sum();
                var intTotal = (int)Math.Ceiling(total);
                Console.WriteLine(intTotal);
            }

            Console.ReadKey();
        }
    }
