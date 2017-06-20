package solution;

import java.util.Scanner;

public class Solution 
{
    public static void main(String[] args) 
    {
        Scanner read = new Scanner(System.in); 
        int cases = read.nextInt();
        for (int i=0; i<cases; i++)
        {
            int cat1 = read.nextInt();
            int cat2 = read.nextInt();
            int hipo = read.nextInt();
            if ((Math.pow(cat1, 2) + Math.pow(cat2, 2)) == Math.pow(hipo, 2))
                System.out.print("R ");
            else if ((Math.pow(cat1, 2) + Math.pow(cat2, 2)) < Math.pow(hipo, 2))
                System.out.print("O ");
            else
                System.out.print("A ");
        }
    } 
}
