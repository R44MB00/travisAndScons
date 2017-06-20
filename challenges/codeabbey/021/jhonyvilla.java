import java.util.Scanner;
public class Solution 
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);
        int m = read.nextInt(); 
        int n = read.nextInt(); 
        int vector1[] = new int [m];
        int vector2[] = new int [n];
        for (int i=0; i<m; i++)          
            vector1[i] = read.nextInt();
        for (int i=0; i<vector1.length; i++)
        {              
            vector2[vector1[i]-1]++;
        }  
        for (int i=0; i<vector2.length; i++)
            System.out.print(vector2[i] +" ");
    }
}