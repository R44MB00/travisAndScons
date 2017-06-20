using System.IO;
using System;
class lowest_unique
{
    static void Main(string[] args)
    {
        using (StreamReader reader = File.OpenText(args[0]))
        while (!reader.EndOfStream)
        {
            string line = reader.ReadLine();
            string[] str_players = line.Split(' ');
            int[] int_players = new int[str_players.Length];
            int[] count = new int[10];
            int min = 10;
            for (int i = 0; i < int_players.Length; i++)
                {
                    int_players[i] = Int32.Parse(str_players[i]);
                    count[int_players[i]]++;
                }
            for (int i = 1; i < count.Length; i++)
            {
                if (count[i]==1){
                    if (i<=min) min = i;
                }
            }
            Console.WriteLine(1+Array.IndexOf(int_players,min)); 
        }
    }
}