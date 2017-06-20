package solution;

import java.util.Scanner;

public class Solution 
{
    public static void main(String[] args) 
    {        
        Scanner read = new Scanner(System.in);
        int n = read.nextInt(); 
        String datos = read.nextLine();
        for (int i=0; i<n; i++)
        {
           datos = read.nextLine();
           String numbers[] = datos.split(" ");           
           int res = 0;
           for (int j=0; j<numbers.length; j++)
           {
               res = res + (Integer.parseInt(numbers[j])*Integer.parseInt(numbers[j]));
           }
           System.out.print(res +" ");
        }                
    }
}
