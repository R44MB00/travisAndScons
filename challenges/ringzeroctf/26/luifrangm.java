import java.util.Scanner;
import java.util.Base64;

public class Rz_026 {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        String cadena = sc.next();
        
        Base64.Decoder deco = Base64.getDecoder();
        
        byte[] texto = deco.decode(cadena);
        int i;
        int aux=3,num, resultado;
        
        for(i=0; i<texto.length; i++)
        {
            num = texto[i];
            resultado = num ^ aux;
            System.out.print((char) resultado);
        }
        
        System.out.println();
        
    }
    
}
