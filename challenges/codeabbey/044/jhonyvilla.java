package solution;

import java.util.Scanner;

public class Solution 
{
    public static void main(String[] args) 
    {
        Scanner read = new Scanner(System.in); 
        int n = read.nextInt();
        for (int i=0; i<n; i++)     
        {
            int r1 = read.nextInt();
            int r2 = read.nextInt();
            int x = (r1%6)+ 1;
            int y = (r2%6)+ 1;
            int sol = x + y;
            System.out.print(sol +" ");
        }        
    }
}
