using System;
using System.IO;
using System.Linq;

namespace ClosestPair
{
    class Program
    {
        static void Main(string[] args)
        {
            var lines = File.ReadLines(args[0]).ToArray();
            int tamaño = 0;
            int nPuntos = int.Parse(lines[tamaño++]);

            while (nPuntos > 0)
            {
                var xCoords = new int[nPuntos];
                var yCoords = new int[nPuntos];

                for (int i = 0; i < nPuntos; i++)
                {
                    var coords = lines[tamaño++].Split(' ');
                    xCoords[i] = int.Parse(coords[0]);
                    yCoords[i] = int.Parse(coords[1]);
                }

                var distanciaCercano = 10000.0;
                var cercano = false;

                for (int i = 0; i < nPuntos; i++)
                {
                    for (int j = i + 1; j < nPuntos; j++)
                    {
                        var x = xCoords[i] - xCoords[j];
                        var y = yCoords[i] - yCoords[j];
                        var distancia = Math.Sqrt(x * x + y * y);
                        if (distancia < distanciaCercano)
                        {
                            distanciaCercano = distancia;
                            cercano = true;
                        }
                    }
                }

                if (cercano == true)
                {
                    Console.WriteLine(string.Format("{0:f4}", distanciaCercano));
                }
                else
                {
                    Console.WriteLine("INFINITY");

                }

                nPuntos = int.Parse(lines[tamaño++]);
            }

            Console.ReadKey();
        }
    }
}
