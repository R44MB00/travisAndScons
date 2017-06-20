import java.util.Scanner;
public class Solution 
{
    public static void main(String[] args) 
    {
        Scanner read = new Scanner(System.in);
        int n = read.nextInt();
        for (int i=0; i<n; i++)
        {
            int n1 = read.nextInt();
            int n2 = read.nextInt();
            int n3 = read.nextInt();
            int sum = n1 * n2 + n3;
            System.out.print(sumdigito(sum) + " ");  
        }
    }
    public static int sumdigito(int num)
    {
        int resultado = 0; 
        while (num > 0)
        {
            resultado += num % 10;
            num = num / 10;
        }        
        return resultado;
    }
}