import java.util.Scanner;
public class Solution 
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);
        int n = read.nextInt();
        for (int i=0; i<n; i++)
        {
            int x = read.nextInt();
            int cont = 0;
            while (x != 1)
            {
                if (x % 2 == 0)
                {
                    x = x/2;
                    cont++;                
                }
                else 
                {
                    x = 3*x+1;
                    cont++;
                }
            }
            System.out.print(cont + " ");
        }
    }
}