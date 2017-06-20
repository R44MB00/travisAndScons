package solution;

import java.util.ArrayList;
import java.util.Scanner;

public class Solution 
{
    public static void main(String[] args) 
    {
        Scanner read = new Scanner(System.in); 
        String[] words;
        String word = read.nextLine();
        words = word.split(" "); 
        ordenar(words); 
        ArrayList<String> solve = new ArrayList<String>();        
        for (int i=0; i<words.length;i++)
        {            
            String aux;
            aux = words[i];
            if (i != words.length-1)
                if (aux.equals(words[i+1]))
                {
                    if (solve.isEmpty()== true)
                        solve.add(aux);
                    else if (!aux.equals(solve.get(solve.size()-1)))
                    {
                        solve.add(aux);
                    }   
                }           
        }
        for (int i=0;i<solve.size();i++)
            System.out.print(solve.get(i)+" ");            
    }
    
    public static void ordenar(String[] vec)
    {
        String aux;
        for (int i=1; i<vec.length; i++) 
        {
            for (int j=0; j<vec.length-i; j++) 
            {
                if (vec[j].compareTo(vec[j+1]) > 0)
                {
                    aux = vec[j];
                    vec[j] = vec[j+1];
                    vec[j+1] = aux;                    
                }
            }
        }        
    }
}
