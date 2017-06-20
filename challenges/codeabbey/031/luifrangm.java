import java.util.Scanner;

public class RotateString {

        public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los valores de entrada");
        
        int num = sc.nextInt();
        int i,j,k,x,tope;
        byte aux;
        String cad;
        
        for(i=0; i<num; i++)
        {
            x = sc.nextInt();
            cad = sc.next();
            byte[] cadena = cad.getBytes();
            tope = cadena.length;
            
            if(x > 0)
            {
                for(k=0; k<x; k++)
                {
                    aux = cadena[0];
                    for(j=0; j<tope-1; j++)
                    {
                        cadena[j] = cadena[j+1];
                    }
                    cadena[tope-1] = aux;
                }
            }
            else
            {
                x = x * -1;
                for(k=0; k<x; k++)
                {
                    aux = cadena[tope-1];
                    for(j=tope-1; j>0; j--)
                    {
                        cadena[j] = cadena[j-1];
                    }
                    cadena[0] = aux;
                }
            }
            
            for(j=0; j<tope; j++)
            {
                System.out.print((char)cadena[j]);
            }
            
            System.out.println();
            
        }
        
        
    }
    
}
