package solution;

import java.util.ArrayList;
import java.util.Scanner;

public class Solution 
{
    public static void main(String[] args) 
    {
        Scanner read = new Scanner(System.in); 
        int n = read.nextInt();
        int k = read.nextInt();
        ArrayList vec = new ArrayList();
        for (int i=0; i<n; i++)
            vec.add(i+1);
        ArrayList vec2 = new ArrayList();
        int cont = 1;
        while (vec.size() != 1)        
        {
            for (int i=0; i<vec.size(); i++)
            {
                if (cont != k)
                {
                    vec2.add(vec.get(i));
                    cont++;
                }
                else
                    cont = 1;
            }
            vec = (ArrayList) vec2.clone();
            vec2.clear();            
        }        
        System.out.print(vec.get(0));        
    }
}
