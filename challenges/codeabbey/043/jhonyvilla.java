import java.util.Scanner;
public class Solution 
{
    public static void main(String[] args) 
    {
        Scanner read = new Scanner(System.in);
        int n = read.nextInt();
        for (int i=0; i<n; i++)
        {
            double num = read.nextDouble();
            double result = (num*6)+1;
            int answer = (int)result;
            System.out.print(answer + " ");  
        }
    }
}