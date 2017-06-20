import java.util.Scanner;
public class Solution 
{
    public static void main(String[] args) 
    {
        int num = 0;
        int sum = 0;
        Scanner read = new Scanner(System.in);
        int n = read.nextInt();
        for (int i=0; i<n; i++)
        {
            num = read.nextInt();
            sum = sum + num;
        }
        System.out.println(sum);
    }
}