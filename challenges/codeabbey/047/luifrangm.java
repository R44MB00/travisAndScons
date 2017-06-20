import java.util.Scanner;

public class CaesarShiftCipher {

    public static void main(String[] args) {
       
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los valores de entrada");
        
        int num = sc.nextInt();
        int k = sc.nextInt();
        String linea;
        int i,j,aux;
        
        for(i=0; i<num+1; i++)
        {
            linea = sc.nextLine();
            System.out.println();
            
            if(!linea.equals(""))
            {
                byte[] letras = linea.getBytes();
            
                for(j=0; j< linea.length()-1; j++)
                {
                    if((letras[j]!=32) && (letras[j]!=250))
                    {
                        letras[j] = (byte) (letras[j] - k);

                        if(letras[j] < 65)
                        {
                            aux = 65 - letras[j];
                            letras[j] = (byte) (91 - aux);
                        }
                    }
                    System.out.print((char) letras[j]);
                }
                System.out.print(".");
            }
            
        }
        
         System.out.println();
    }
    
}
