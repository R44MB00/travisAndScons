import java.util.Scanner;

public class Wc_cryptodigraphs {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        String cadena = sc.nextLine();
        
        cadena = cadena.replaceAll(" ", "");
        
        int i,j=0,tope=cadena.length(),x=0,tope2 = tope/2;
        String[] abc = new String[30];
        String[] texto = new String[tope2];
        String cad;
        
        
        
        for(i=0; i<tope-1; i+=2)
        {
            cad = cadena.substring(i, i+2);
            texto[x] = cad;
            x++;
            if(buscar(abc,cad) == false)
            {
                abc[j] = cadena.substring(i, i+2);
            j++;
            }
            
        }
        
        String[] key = new String[30];
        
        key[0] = "C";
        key[1] = "O";
        key[2] = "N";
        key[3] = "G";
        key[4] = "R";
        key[5] = "A";
        key[6] = "T";
        key[7] = "U";
        key[8] = "L";
        key[9] = "I";
        key[10] = "S";
        key[11] = "!";
        key[12] = "Y";
        key[13] = "D";
        key[14] = "E";
        key[15] = "C";
        key[16] = "Y";
        key[17] = "P";
        key[18] = "H";
        key[19] = "M";
        key[20] = "F";
        key[21] = "W";
        key[22] = ",";
        key[23] = "W";
        key[24] = ".";
        key[25] = "J";
        key[26] = "B";
        key[27] = "E";
        key[28] = "K";
        key[29] = ".";
        
        int resultado;
        
         for(i=0; i<tope-1; i+=2)
        {
            cad = cadena.substring(i, i+2);
            resultado = buscarpos(abc,cad);
            System.out.print(key[resultado]);
        }
      
        
    }
    
    private static boolean buscar(String[] vec, String cad)
    {
        boolean sw = false;
        int i;
        
        for(i=0; i<vec.length; i++)
        {
            if(cad.equals(vec[i]))
            {
                return true;
            }
        }
        
        return sw;
    }
    
    
    private static int buscarpos(String[] vec, String cad)
    {
        int pos=-1;
        int i;
        
        for(i=0; i<vec.length; i++)
        {
            if(cad.equals(vec[i]))
            {
                return i;
            }
        }
        
        return pos;
    }
    
    
    
}
