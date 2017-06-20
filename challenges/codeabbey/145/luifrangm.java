import java.util.Scanner;
import java.math.BigInteger;

public class ModularExponentiation {

   
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los valores de entrada");
        
        int num = sc.nextInt();
        int i;
        BigInteger a = new BigInteger("0");
        BigInteger b = new BigInteger("0");
        BigInteger m = new BigInteger ("0");
        BigInteger res = new BigInteger("0");
        BigInteger j = new BigInteger("2");
        BigInteger inc = new BigInteger("1");
        
        for(i=0; i<num; i++)
        {
            a = sc.nextBigInteger();
            b = sc.nextBigInteger();
            m = sc.nextBigInteger();
            res = a;
            res = res.modPow(b, m);
            System.out.println(res.toString());
        }
        
        
    }
    
}
