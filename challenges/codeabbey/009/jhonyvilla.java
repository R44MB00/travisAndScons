import java.util.Scanner;
public class Solution
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);
        int n = read.nextInt();        
        for (int i=0; i<n; i++)
        {  
           int a = read.nextInt();
           int b = read.nextInt();
           int c = read.nextInt();
           if ((a + b > c) && (b + c > a) && (a + c > b))
               System.out.print("1 ");
           else
               System.out.print("0 ");           
        }     
    }
}