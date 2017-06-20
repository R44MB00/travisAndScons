using System;
using System.Linq;
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
			string[] l =line.Split(' ');
			int li=0;
			int lj=0;
			bool loop=false;
			for(int i=0;i<l.Length;i++){ 
				for(int j=i+1;j<l.Length;j++){
					if(l[i]==l[j]&&!loop){
						li=i;
						lj=j;
						loop=true;
						continue;
					}
					if(loop){
						i++;
						if(i==lj){
							for(int k=li;k<lj;k++){
								Console.Write(l[k]+" ");
							}
							Console.Write("\n");
							break;
						}
						if(l[i]==l[j]){
							continue;
						}else{
							i=li;
							j=lj+1;
							loop=false;
						}
					}					
				}					
			}
        }
    }
}
