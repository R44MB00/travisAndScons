using System;
using System.IO;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
        string[] r=new string[] {", yeah!",", this is crazy, I tell ya.",", can U believe this?",", eh?",", aw yea.",", yo.","? No way!",". Awesome!"};
        string endings=",.!?";
        bool rep=true;
        int replace=0;
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;

            for(int i=0;i<line.Length;i++){
                if(replace==r.Length)
                  replace=0;
                char c=line[i];
                if(endings.IndexOf(c)!=-1){
                  if(endings.IndexOf(c)!=0){
                    if(rep=!rep){
                      line=line.Substring(0,i)+r[replace]+line.Substring(i+1);
                      replace++;
                      if(replace==r.Length)
                        replace=0;
                      i=i+r[replace].Length;                  
                    }


                  }
                }

            }
            Console.WriteLine(line);
        }
    }
}
