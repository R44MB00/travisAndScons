import java.util.Scanner;
public class Solution 
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);        
        int n = read.nextInt();   
        int order[] = new int [n];
        int vect[] = new int [n];
        int pos[] = new int [n];
        for (int i=0; i<n; i++)
        {
            order[i] = read.nextInt();
            vect[i] = order[i];
        }
        buble(order);
        for (int i=0; i<n; i++)
        {
            int cont = 0;
            for (int j=0; j<n; j++)
            {
                if (order[i] != vect[j])                    
                   cont++;
                else
                    break;
            }
            pos[i] = cont+1;
        }
        for (int i=0; i<n; i++)
            System.out.print(pos[i] +" ");        
    }   
    public static void buble(int order[])
    {
        int aux;
        for (int i=1; i<order.length; i++)
        {
            for (int j=0; j<order.length-i; j++)
            {
                if (order[j] > order[j+1])
                {
                    aux = order[j];
                    order[j] = order[j+1];
                    order[j+1] = aux;                    
                }
            }
        }
    }
}