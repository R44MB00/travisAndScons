import java.util.Scanner;
import java.math.BigInteger;

public class FibonacciSequence {

    private static BigInteger[] fib = new BigInteger[1000];
    
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.println("Digite los valores de entrada");
        
        
        int i;
        BigInteger a = new BigInteger ("1");
        BigInteger b = new BigInteger("1");
        BigInteger c = new BigInteger("0");
        
        for(i=0; i<1000; i++)
        {
            c = a.add(b);
            fib[i] = c;
            a = b;
            b = c;
        }
        
        
        int num = sc.nextInt();
        BigInteger [] vec = new BigInteger[num];
        BigInteger res = new BigInteger("0");
        
        System.out.println("Respuestas:");
        
        for(i =0; i<num; i++)
        {
            vec[i] = sc.nextBigInteger();
            res = BusquedaSecuencial(vec[i]);
            System.out.println(res);
        }
        
        
    }
    
    private static BigInteger BusquedaSecuencial(BigInteger numero)
    {
        BigInteger posicion = new BigInteger("0");
        
        
        int i;
        
        for(i=0; i<1000; i++)
        {
            if(numero.compareTo(fib[i]) == 0)
            {
                posicion = BigInteger.valueOf(i);
            }
        }
        BigInteger p = new BigInteger("3");
        return posicion = posicion.add(p);
    }
        
    
    
}
