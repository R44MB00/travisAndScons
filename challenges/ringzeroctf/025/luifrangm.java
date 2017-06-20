import java.util.Scanner;

public class Wc_Root13 {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        String cadena = sc.nextLine();
        
        System.out.println(Root13(cadena));
        
    }
  
  
    private static String Root13(String cadena)
    {
        String cad = "";
        
        byte[] letras = cadena.getBytes();
        
        int i,tope=cadena.length(),aux;
        
        for(i=0; i<tope; i++)
        {
            if(letras[i]>64 && letras[i]<78)
            {
                letras[i] = (byte) (letras[i] + 13);
            }
            else
            {
                if(letras[i]>77 && letras[i]<91)
                {
                    aux = 90 - letras[i];
                    letras[i] = (byte) (64 + (13 - aux));
                }
                else
                {
                    if(letras[i]>96 && letras[i]<110)
                    {
                        letras[i] = (byte) (letras[i] + 13);
                    }
                    else
                    {
                        aux = 122 - letras[i];
                        letras[i] = (byte) (96 + (13 - aux));
                    }
                }
            }
        }
        
        for(i=0; i<tope; i++)
        {
            cad = cad + (char) letras[i];
        }
        
        return cad;
    }
        
}
