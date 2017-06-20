import java.math.BigInteger;
import java.util.Scanner;

public class FibonacciDivisibility {

    private static BigInteger[] fib = new BigInteger[10000];
    
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite los valores de entrada");
        
        
        int i;
        BigInteger a = new BigInteger("-1");
        BigInteger b = new BigInteger("1");
        BigInteger c = new BigInteger("0");
        
        for(i=0; i<10000; i++)
        {
            c = a.add(b);
            fib[i] = c;
            a = b;
            b = c;
        }
        
        int num = sc.nextInt();
        
        for(i=0; i<num; i++)
        {
            System.out.println(Buscar(sc.nextBigInteger()));
        }
        
    }
    
    
    private static int Buscar(BigInteger x)
    {
        int i=1;
        boolean sw=true;
        int posicion = 0;
        
        
        BigInteger resto = new BigInteger("0");
        
        while((sw) && (i<10000))
        {
            resto = fib[i].remainder(x);
            
            if(resto.compareTo(BigInteger.ZERO) == 0)
            {
                sw = false;
                posicion = i;        
            }
            i++;
        }
        
        return posicion;
    }
    
}
