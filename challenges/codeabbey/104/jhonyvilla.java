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
            int ax = read.nextInt();
            int ay = read.nextInt();
            int bx = read.nextInt();
            int by = read.nextInt();
            int cx = read.nextInt();
            int cy = read.nextInt();
            int abx = bx - ax;            
            int aby = by - ay;            
            int acx = cx - ax;
            int acy = cy - ay;
            int nabx = aby;
            int naby = abx * -1;
            int abcx = nabx * acx;
            int abcy = naby * acy;
            double abcxy = Math.abs(abcx + abcy);            
            double area = abcxy / 2;     
            System.out.print(area +" ");
        }
    }
}
