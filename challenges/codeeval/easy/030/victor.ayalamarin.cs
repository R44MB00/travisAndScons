using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication3
{
    class Program
    {
        static void Main(string[] args)
        {

            long tam = 0;
            string linea, sStr1, sStr2;
            String resp = "";
            char com = ',';
            StreamReader file = new StreamReader("C:\\Users\\VICTOR\\Documents\\Aprueba.txt");
            ///using (StreamReader file = File.OpenText(args[0]))
            do {
                linea = file.ReadLine();
                if (linea != null)
                {
                    if (linea != null)
                    {
                        resp = "";
                        linea = linea.Trim();
                        int ubicapc = linea.IndexOf(";");
                        sStr1 = linea.Substring(0, ubicapc).Trim();
                        sStr2 = linea.Substring(ubicapc + 1).Trim();
                        String[] vec1 = sStr1.Split(com);
                        int[] veci1 = new int[vec1.Length];

                        for(int a = 0; a < vec1.Length; a++)
                        {
                            veci1[a] = Convert.ToInt16(vec1[a]);
                        }

                        String[] vec2= sStr2.Split(com);
                        int[] veci2 = new int[vec2.Length];

                        for (int b = 0; b < vec2.Length; b++)
                        {
                            veci2[b] = Convert.ToInt16(vec2[b]);
                        }
                        for (int i=0; i<veci1.Length; i++)
                        {
                            for(int j = 0; j < veci2.Length; j++)
                            {
                                if (veci1[i] == veci2[j])
                                {
                                    if (resp == "")
                                    {
                                        resp = resp + veci2[j];
                                    }
                                    else
                                    {
                                        resp = resp + "," + veci2[j];
                                    }
                                }
                            }
                        }


                        Console.WriteLine(resp);

                    }
                }
            } while (linea != null);
            Console.ReadKey();
        }
        }
}
        
