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
	    string solve = "";
	    int decrypt=0;
	    for (int i=0; i<line.Length; i++)
	    {
	    	decrypt=(int)line[i];
	    	if (decrypt>=97 & decrypt<=102){
	    		decrypt=decrypt+20;
	    	}
	    	else if (decrypt>=103 & decrypt<=109){
	    		decrypt=decrypt+7;
	    	}
	    	else if (decrypt>=110 & decrypt<=116){
	    		decrypt-=7;
	    	}
	    	else if (decrypt>=117 & decrypt<=122){
	    		decrypt-=20;
	    	}
			solve=solve+(char)decrypt;			
	   }
	    System.Console.WriteLine(solve);
        }
    }
}
