using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;


namespace codeeval_filesize
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
               // string ruta = "test.txt";
                using (StreamReader sr = new StreamReader(args[0]))
                //using (StreamReader sr = new StreamReader("test.txt")
                {
                    FileInfo f = new FileInfo(args[0]); //instanciamiento fileinfo
                    long s1 = f.Length; 				//obtencion del size
                    Console.WriteLine(s1);				//mostrada del size

                }

            }
            catch (Exception e)
            {
                Console.WriteLine("The file could not be read:");
                Console.WriteLine(e.Message);
            }
            System.Console.ReadLine();
        }
    }
}
