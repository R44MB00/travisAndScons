using System;
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
            bool result=true;
            Stack<char> abre = new Stack<char>();
            for(int i=0;i<line.Length;i++){
                if(esApertura(line[i])){
                    abre.Push(line[i]);
                }else if(esCierre(line[i])){
                    if(abre.Count==0 || !cierraUltimo(abre.Pop(),line[i])){
                        result=false;
                        break;
                    }
                }
            }
            if(!(abre.Count==0)){
                result=false;
            }
            Console.WriteLine(result?"True":"False");
        }
    }
    
    static bool cierraUltimo(char c, char x){
        return (c=='{' && x=='}') || (c=='[' && x==']') || (c=='(' && x==')');
    }
    
    static bool esApertura(char c){
        return c=='{' || c=='[' ||c=='(';
    }    
    
    static bool esCierre(char c){
        return c=='}' || c==']' ||c==')';
    }     
}
