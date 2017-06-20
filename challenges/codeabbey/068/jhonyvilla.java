package solution;

import java.util.Scanner;

public class Solution 
{
    public static void main(String[] args) 
    {
        Scanner read = new Scanner(System.in);
        int n = read.nextInt();
        for (int i = 0; i < n; i++)
        {
            double s = read.nextDouble();
            double a = read.nextDouble();
            double b = read.nextDouble();
            double solution = ((s * a)/(a+b));
            System.out.print(solution +" ");
        }
    }    
}
