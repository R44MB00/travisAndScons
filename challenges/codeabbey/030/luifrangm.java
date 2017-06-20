import java.util.Scanner;

public class ReverseString {

        public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los valores de entrada");
        
        String linea = sc.nextLine();
        
        String[] palabras = linea.split(" ");
        String[] nuevo = new  String[palabras.length];
        
        int tope = palabras.length,i;
        String resultado;
        
        for(i=0; i<tope; i++)
        {
            nuevo[i] = voltea(palabras[i]);
            
        }
        
        for(i = tope-1; i>=0; i--)
        {
            System.out.println(nuevo[i]);
        }
        
    }
    
    
    private static String voltea(String cadena)
    {
        String cad ="";
        
        int i,tope=cadena.length();
        String aux;
                
        for(i=0; i<=tope-1; i++)
        {
            aux = cadena.substring(i,i+1);
            cad = aux + cad;
        }
        
        return cad;
    }
    
}
