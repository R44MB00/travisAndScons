package solution;

import java.util.Scanner;
import java.math.BigInteger;

public class Solution 
{
    public static void main(String[] args) 
    {
        Scanner read = new Scanner(System.in); 
        int cases = read.nextInt();
        for (int i=0; i<cases; i++)
        {
            BigInteger n = read.nextBigInteger();
            BigInteger fn = new BigInteger("0");
            fn = factorial(n);
            BigInteger k = read.nextBigInteger();
            BigInteger fk = new BigInteger("0");
            fk = factorial(k);
            BigInteger fnk = new BigInteger("0");
            fnk = factorial(n.subtract(k));
            BigInteger aux = new BigInteger("0");
            aux = fk.multiply(fnk);
            BigInteger cnk = new BigInteger("0");
            cnk = fn.divide(aux);
            System.out.print(cnk +" ");
        }
    }
    
    public static BigInteger factorial(BigInteger n)
    {
        BigInteger factorial = new BigInteger("1");
        BigInteger aux = new BigInteger("1");
        BigInteger aux2 = new BigInteger("0");
        while (!n.equals(aux2))
        {
            factorial = factorial.multiply(n);            
            n = n.subtract(aux);             
        }
        return factorial;
    }   
}
