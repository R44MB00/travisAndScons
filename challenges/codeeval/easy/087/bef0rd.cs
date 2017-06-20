using System.IO;
using System;
using System.Collections.Generic;

class Program
{
    static int[,] board = new int[256,256];
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            if (null == line)
                continue;
			runLine(line);
			
            
        }
    }
    
	
    public static int runLine(string line) {
        string[] options = line.Split(' ');
        int p1 = Int32.Parse(options[1]);
        int p2 = 0;
        if (options.Length == 3) {
            p2 = Int32.Parse(options[2]);
        }
        int sum = 0;

        
        switch (options[0]) {
            case "SetCol":
                for (int i=0;i<256;i++) 
                    board[i, p1] = p2;
            
                break;
            case "SetRow":
                for (int i=0;i<256;i++) 
                    board[p1, i] = p2;            
                break;
                
            case "QueryCol":
                for (int i=0;i<256;i++) 
                   sum += board[i, p1] ;
                Console.WriteLine(sum);
                break;
                
            case "QueryRow":
                for (int i=0;i<256;i++) 
                    sum += board[p1, i];
                Console.WriteLine(sum);
                break;
                
        }
    	
        return 0;
    }
}
