
using System.IO;
using System.Collections.Generic;

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
            int lengthArray2;
            List<int> terms = new List<int>();
            List<int> result = new List<int>();
            string [] array1 = line.Split(';'); 
            string [] array2 = (string.Join(",", array1)).Split(','); // aca queda el array ya separados sin , ni ; 
            lengthArray2=array2.Length;
            for (int runs = 1; runs < lengthArray2-1; runs=runs+2){
                terms.Add(int.Parse(array2[runs]));
            } // hasta aca tengo en la variable term con solo los numeros de distancia
            terms.Sort(); // los organizo en orden ascendente
            int lengthTerms=terms.Count;
            result.Add(terms[0]);
            for (int i =0; i<lengthTerms-1;i++){
                result.Add(terms[i+1]-terms[i]);   // adiciono cada elemento con la diferencia de km entre puntos
            }
            //System.Console.WriteLine(terms[0]);
            System.Console.WriteLine(string.Join(",", result));
            
        }
    }
}
