import java.util.Scanner;
public class Solution 
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);        
        int n = read.nextInt();          
        for (int i=0; i<n; i++)
        {
            int x1 = read.nextInt();
            int y1 = read.nextInt();
            int x2 = read.nextInt();
            int y2 = read.nextInt();
            int a = (y2-y1)/(x2-x1);
            int b = y1-(a*x1);
            System.out.print("("+ a +" "+ b +") " );            
        }        
    } 
}