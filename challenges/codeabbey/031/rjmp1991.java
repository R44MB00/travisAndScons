import java.util.Scanner;
public class RotateString {
    public static void main(String[] args) {
        
        Scanner leer = new Scanner(System.in);
        int n = leer.nextInt()*2,aux;
        String [] Cadenas = new String [n];
        String aux2;
        String res="";
        for (int i = 0; i < n; i++) {
           Cadenas[i]=leer.next();           
            
        }
        for (int i = 0; i < n; i++) {
            aux=Integer.parseInt(Cadenas[i]);
            aux2=Cadenas[i+1];
            if (aux>0) {
                res+=aux2.substring(aux)+aux2.substring(0,aux)+" ";
            }else{
                res+=aux2.substring(aux2.length()-(aux*-1)
				,aux2.length())+aux2.substring(0,
				aux2.length()-(aux*-1))+" ";
            }
            i++;
        }
        System.out.println(res.substring(0, res.length()-1));
        
    }
    
}