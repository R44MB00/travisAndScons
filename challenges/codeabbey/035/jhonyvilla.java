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
            float s = read.nextFloat();
            float r = read.nextFloat();
            float p = read.nextFloat();
            int years = 0;
            while (s < r)
            {
                s = s + porcentaje(s, p);
                years ++;
            }
            System.out.print(years +" ");
        }        
    }
    
    public static float porcentaje(float x, float y)
    {
        float porcentaje = x*y/100;
        return porcentaje;
    }
}
