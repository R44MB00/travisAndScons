using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;


namespace codeeval_numberofones
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                // string ruta = "test.txt";
                //using (StreamReader sr = new StreamReader(ruta))
                using (StreamReader sr = new StreamReader(args[0]))
                {
                    String line;
                    string binary="";
                   


                    int counter = 0,contunos=0;
                   
                    int[] vector = null;// Declaración del array
                    vector = new int [300];

                    while ((line = sr.ReadLine()) != null) //lectura del file
                    {
                        vector[counter] = int.Parse(line);
                        binary = Convert.ToString(vector[counter], 2); //conversion a bianrio
                        char[] a = new char[15];
                        
                              a=  binary.ToCharArray();			// cambio a array de chars
                            for (int i = 0; i <= a.Length-1; i++)		//recorrido de arrayas de char
                               
                            {
                                
                                if(a[i].Equals('1')){				//comparacion de unos
                                    contunos++;						//suma unos
                                }
                            }
                            Console.WriteLine(contunos);
                            contunos = 0;								//reinicion contador
                        counter++;

                    }


                    

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
