import java.util.Scanner;

public class Encodingbinary {


    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        String cadena = sc.next();
        String nueva="";
        
        int i, tope = cadena.length(),num;
        
        for(i=0; i<tope; i+=7)
        {
            nueva = "0" + cadena.substring(i, i+7);
            num = Integer.parseInt(nueva, 2);
            System.out.print((char) num );
        }
        
        System.out.println();
        
    }
    
}
