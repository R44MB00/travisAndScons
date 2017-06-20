using System;
using System.Linq;
using System.IO;
using System.Collections.Generic;

class Program
{
	static void Main(string[] args){
		int[,] m= new int[256,256];
		for(int i=0;i<256;i++){
			for(int j=0;j<256;j++){
				m[i,j]=0;
			}
		}
		using (StreamReader reader = File.OpenText(args[0]))
		while (!reader.EndOfStream)
		{
			string line = reader.ReadLine();
			if (null == line)
				continue;
			string[] l=line.Split(' ');
			int s=0;
			switch (l[0])
			{
				case "SetRow":
					for(int i=0;i<256;i++){
						m[i,Int32.Parse(l[1])]=Int32.Parse(l[2]);
					}
					break;
				case "SetCol":
					for(int i=0;i<256;i++){
						m[Int32.Parse(l[1]),i]=Int32.Parse(l[2]);
					}				
					break;
				case "QueryRow":
					s=0;
					for(int i=0;i<256;i++){
						s+=m[i,Int32.Parse(l[1])];
					}			
					Console.WriteLine(s);					
					break;
				case "QueryCol":
					s=0;
					for(int i=0;i<256;i++){
						s+=m[Int32.Parse(l[1]),i];
					}					
					Console.WriteLine(s);
					break;					
			}
		}
	}
}
