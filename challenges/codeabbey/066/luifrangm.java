import java.util.Scanner;


public class CaesarCipherCracker {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los valores de entrada");
        
        int num = sc.nextInt();
        String linea;
        int i,j,aux,k=0,x;
                
        for(i=0; i<num+1; i++)
        {
            linea = sc.nextLine();
            System.out.println();
            
            if(!linea.equals(""))
            {
                
                
                System.out.println();
                System.out.println("LINEA " + (num+1));
                System.out.println();
                
                for(x=1; x<26; x++)
                {
                    k = x;
                    System.out.println(k-1);
                    
                    byte[] letras = linea.getBytes();
                    
                    for(j=0; j< linea.length(); j++)
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
                }
                
                System.out.print(".");
            }
        }
        
        
    }
    
}
