using System.IO;
using System;

class query_board
{
    static void Main(string[] args)
    {

        int[,] board = new int[256,256];

        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {

            string line = reader.ReadLine();
            string[] parts = line.Split(' ');

            if (parts[0] == "SetCol")
            {
                int col = Int32.Parse(parts[1]); 
                int val = Int32.Parse(parts[2]);
                for (int r = 0; r < 256;r++) board[r,col] = val;
            } 

            if (parts[0] == "SetRow")
            {
                int row = Int32.Parse(parts[1]); 
                int val = Int32.Parse(parts[2]);
                for (int c = 0; c < 256;c++) board[row,c] = val;
            } 

            if (parts[0] == "QueryCol") 
            {
                int col = Int32.Parse(parts[1]); 
                int sum = 0;
                for (int r = 0; r < 256;r++) sum += board[r,col];
                Console.WriteLine(sum);
            }

            if (parts[0] == "QueryRow") 
            {
                int row = Int32.Parse(parts[1]); 
                int sum = 0;
                for (int c = 0; c < 256;c++) sum += board[row,c];
                Console.WriteLine(sum);
            }
        }
    }
}