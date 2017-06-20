
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
            int itemPosition=0;
            List<string> finalResult = new List<string>();
            string [] split = line.Split(';'); //split por espacio
            List<string> listOfNames = new List<string>(line.Split(';')); // convierte a una lista y lo separa por ;
            List<string> array1 = new List<string>(listOfNames[0].Split(','));
            List<string> array2 = new List<string>(listOfNames[1].Split(','));
            //int itemPosition = array1.BinarySearch(array2[0]); // busca en una lista 
            //int itemPosition;
            foreach (var listArray in array1) {
                bool isInList = array2.IndexOf(listArray) != -1;
                if(isInList==true){
                    finalResult.Add(listArray);
                }
                //itemPosition = array2.BinarySearch(listArray);
                //if (itemPosition>0){
                //    finalResult.Add(listArray);
                //}
            }
            //System.Console.WriteLine(itemPosition);
            if(finalResult.Count>0){
                System.Console.WriteLine(string.Join(",", finalResult));
                //System.Console.WriteLine(finalResult[0]);
            }else{
                System.Console.WriteLine();
            }
            

        }
    }
}
