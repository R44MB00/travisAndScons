package solution;

import java.util.Scanner;

public class Solution 
{
    public static void main(String[] args) 
    {
        String suit[] = {"Clubs", "Spades", "Diamonds", "Hearts"};
        String rank[] = {"2", "3", "4", "5", "6", "7", "8", "9",
            "10", "Jack", "Queen", "King", "Ace"};
        Scanner read = new Scanner(System.in);
        int n = read.nextInt();
        int cards [] = new int [n];
        for (int i=0; i<n; i++)
        {
           cards[i] = read.nextInt();
        }
        for (int i=0; i<cards.length; i++)
        {
            int sval = cards[i] / 13;
            int rval = cards[i] % 13;
            System.out.print(rank[rval]+"-of-"+suit[sval]+" ");
        }         
    }
}
