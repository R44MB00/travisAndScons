import java.util.Scanner;
import java.math.BigInteger;
public class Solution 
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);        
        BigInteger vec[] = new BigInteger[1000];
        vec[0] = new BigInteger("0");
        vec[1] = new BigInteger("1");
        for (int i=1; i<vec.length-1; i++)
        {
            vec[i+1] = vec[i].add(vec[i-1]);
        }
        int n = read.nextInt();
        for (int i=0; i<n; i++)
        {
            BigInteger num = read.nextBigInteger();
            for (int j=0; j<vec.length; j++)
            {                
                if (num.compareTo(vec[j])==0)
                {
                    System.out.print(j +" ");
                    break;
                }
            }
        }        
    }  
}