import java.util.Scanner;
import java.math.BigInteger;
public class Solution
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);        
        BigInteger operacion = read.nextBigInteger();          
        for (int i=0; i<100; i++)
        {
            String signo = read.next();
            BigInteger dato = read.nextBigInteger();
            if (signo.equals("+"))            
                operacion = operacion.add(dato);
            if (signo.equals("*"))
                operacion = operacion.multiply(dato);
            if (signo.equals("%"))
            {
                operacion = operacion.mod(dato);
                break;
            }  
        }
        System.out.print(operacion);
    }  
}