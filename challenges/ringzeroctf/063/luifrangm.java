import java.util.Scanner;

public class Wc_martianmessagepart2 {

    private static byte[] aux = new byte[26];
    private static byte[][] matriz = new byte[26][26];
    
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        String mensaje = sc.nextLine();

        String clave = sc.nextLine();
        clave = clave.toUpperCase();
        
        byte[] m = mensaje.getBytes();
        byte[] c = clave.getBytes();
        int i,j;
        
        j=0;
        
        for(i=65; i<91; i++)
        {
            aux[j] = (byte) i;
            j++;
        }
        
        int x;
        
        for(i=0; i<26; i++)
        {
            x =i;
            
            for(j=0; j<26; j++)
            {
                matriz[i][j] = aux[x];
                x++;
                
                if(x>25)
                {
                    x=0;
                }
            }
        }
        
       int a,b,p,z=0;
       
       for(i=0; i<mensaje.length(); i++)
       {
           a = buscarcolumna(c[z]);
           
           if(m[i] >47 && m[i]<58)
           {
               System.out.print((char) m[i]);
               z--;
           }
           else
           {
                b = buscarfila(m[i],a);
                System.out.print((char) aux[b]);
           }
           
           z++;
           
           if(z == c.length)
           {
               z=0;
           }
       }
       
        System.out.println();
    }
    
    private static int buscarcolumna(byte car)
    {
        int i=0;
        
        for(i=0; i<26;i++)
        {
            if(matriz[0][i] == car)
            {
                return i;
            }
        }
        
        return i;
    }
    
    private static int buscarfila(byte car,int fila)
    {
        int i=0;
        
        for(i=0; i<26;i++)
        {
            if(matriz[fila][i] == car)
            {
                return i;
            }
        }
        
        return i;
    }
    
}

