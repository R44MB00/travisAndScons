using System.IO;
using System.Collections.Generic;
class Program
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText("test.txt"))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
            string aa = line.Replace(" ", ""); // quita el espacio en blanco
            char[] characters = aa.ToCharArray(); // me crea un char array con cada caracter   
            var unique = new List<string>();
            foreach (var n in characters){                            
                unique.Add(n.ToString());         //lo paso de char array a list string
            }
            List<int> numbers = new List<int>();
            foreach (var n in unique){                            
                numbers.Add(int.Parse(n));         //lo paso de list string a list int
            }
            //hasta aca tengo un list integer****************************************
            int lengthNumber=numbers.Count;
            var validator='F';
            int sum=0;         
            int momento=0;
            for(int i=lengthNumber-1; i>=0;i=i-1){
                if(validator=='F'){
                    sum = sum + numbers[i];
                    validator='T';
                }else{
                    if(numbers[i]*2<10){
                        sum=sum+numbers[i]*2;
                        validator='F';
                    }else{
                        momento=numbers[i]*2;
                        string arreglo = momento.ToString(); 
                        int sumatoria = 0; 
                        foreach (char n1 in arreglo){
                            sumatoria += int.Parse(n1.ToString());
                        validator='F';
                        } 
                        sum=sum+sumatoria;
                    }
                }
            }
            if(sum%10==0){
                System.Console.WriteLine("1");
            }else{
                System.Console.WriteLine("0");
            }
            //System.Console.WriteLine(sum); 
        }
    }
}
