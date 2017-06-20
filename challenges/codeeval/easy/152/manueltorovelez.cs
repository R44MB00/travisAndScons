using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace codeeval_Age__distribution {
	class Program {
		static void Main(string[] args) {

            string categoria = null;
            //string ruta = "test.txt";
            //using(StreamReader sr = new StreamReader(ruta))
            using (StreamReader sr = new StreamReader(args[0]))
			{
				String line;

				int counter = 0;
				int[] vector; // Declaración del array
				vector = new int[300];
			

				while ((line = sr.ReadLine()) != null) //lectura del file
				{
					vector[counter] = int.Parse(line); //conversion a integer
					counter++;

				}
                //valores categotia
				for (int i = 0; i <= counter; i++) {
					if (vector[i] >= 0 && vector[i] <= 2) {
                        categoria = "Still in Mama's arms";
					} else {
						if (vector[i] >= 3 && vector[i] <= 4) {

							categoria = "Preschool Maniac";
						} else {
							if (vector[i] >= 5 && vector[i] <= 11) {
								categoria = "Elementary school";
							} else {
								if (vector[i] >= 12 && vector[i] <= 14) {
									categoria = "Middle school";
								} else {
									if (vector[i] >= 15 && vector[i] <= 18) {
										categoria = "High school";
									} else {
										if (vector[i] >= 19 && vector[i] <= 22) {
											categoria = "College";
										} else {
											if (vector[i] >= 23 && vector[i] <= 65) {
												categoria = "Working for the man";
											} else {
												if (vector[i] >= 66 && vector[i] <= 100) {
													categoria = "The Golden Years";
												} else {
													categoria = "This program is for humans";
												}

											}
										}
									}
								}
							}
						}
					}
                    Console.WriteLine(categoria);//mostrar resultados
					
				}
          
			}
            
System.Console.ReadLine();
}

}
}


