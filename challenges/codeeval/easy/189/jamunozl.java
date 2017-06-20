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
            string [] array = line.Split(' ');
            int lengthWord=array.Length;
            int result=0;
            int variable=0;
            int finalResult=0;
            for (int i= 1; i <= lengthWord-1; i++){
                int reference = int.Parse(array[i]);
                //System.Console.WriteLine("reference {0}",reference);
                result=0;
                for (int j= 1; j <= lengthWord-1; j++){
                    if(j !=i ){
                        variable = reference-int.Parse(array[j]);
                        //System.Console.WriteLine("array j {0}",array[j]);
                        //System.Console.WriteLine("variable {0}",variable);
                        if (variable>=0){
                            result=result+variable;
                        }else{
                            variable=variable*(-1);
                            result=result+variable;
                        }
                    }
                } // termino la referencia
                //System.Console.WriteLine("result {0}",result);
                if (i==1){
                    finalResult=result;
                }
                if(finalResult>result){
                    finalResult=result;
                }
            }
            System.Console.WriteLine(finalResult);
            
        }
    }
}
