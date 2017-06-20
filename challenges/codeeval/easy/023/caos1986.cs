using System;
using System.IO;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
		for(int i=1;i<=12;i++){
			for(int j=1;j<=12;j++){
				string a=(i*j).ToString();
				string w=new string(' ', 4-a.Length);
				Console.Write(w+a);
			}
			Console.Write("\n");
		}
    }
}
