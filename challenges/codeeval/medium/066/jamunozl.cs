
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
        //System.Console.WriteLine(line);        
        int number = int.Parse(line);
        int numberOne = 1;
        int lengthWord=0;
        List<int> finalResult = new List<int>();
        for(int i=1;i<=number;i++){
            int[] numbers = new int[i];
            lengthWord=numbers.Length;
            
            if(lengthWord>2){
                
                for(int j=1;j<=lengthWord;j++){
                    if(j!=1 && j!= lengthWord){
                        int x = finalResult[finalResult.Count-i]+finalResult[finalResult.Count-i+1];
                        finalResult.Add(x);
                        }else{
                            finalResult.Add(numberOne);
                        }
                }
          
            }else{
                if(lengthWord==1){
                    finalResult.Add(numberOne);
                }
                if(lengthWord==2){
                    finalResult.Add(numberOne);
                    finalResult.Add(numberOne);
                }
            }
            
        }
        System.Console.WriteLine(string.Join(" ", finalResult));
        }
    }
}
