import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Scanner;
public class Fibo {
   
    public static void main(String[] args) {
        BigInteger suma = new BigInteger("0");
        int cont=0;
        String cadena="";
        
        ArrayList <String> valores= new ArrayList();
        Scanner leer = new Scanner(System.in);
        int cantidad = leer.nextInt();
        BigInteger valor1,valor2,valor3,n;

        for(int i =0; i<cantidad; i++){
             valores.add(leer.next());
        }
        for (int j = 0; j < valores.size(); j++) {
          
            valor1= new BigInteger("0");
			valor2=new BigInteger("1");
			valor3=new BigInteger("1");
			n=new BigInteger(valores.get(j));
            //se pierden 3 pos

            while(suma.compareTo(n)==-1) {
                valor1=valor2.add(valor3);
                valor2=valor3;
                valor3=valor1;
                suma=suma.add(valor3);
                cont++;
            }
            cadena+=(cont+3)+" ";
            cont=0;
            suma= new BigInteger("0");
        }
        System.out.println(cadena.substring(0, cadena.length()-1));
    }
    
}