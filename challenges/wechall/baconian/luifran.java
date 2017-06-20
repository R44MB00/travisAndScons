import java.util.Scanner;


public class Wc_Baconian {

    
    private static class dato
    {
        int clave;
        String valor;
        
        void datos()
        {
            clave = 0;
            valor = "";
        }
    }
    
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        String cadena = sc.nextLine();
        
        cadena = cadena.replace(" ", "");
        cadena = cadena.replace(".", "");
        cadena = cadena.replace(",", "");
        cadena = cadena.replace("'", "");
        cadena = cadena.replace("(", "");
        cadena = cadena.replace(")", "");
        byte[] datos = cadena.getBytes();
        char[] aux = new char[datos.length];
        String[] cuartos = new String[datos.length/5];
        int i, j=0,tope = datos.length;
        
        dato[] diccionario = new dato[24];
        
        dato uno = new dato();
        
       uno.clave = 65;
       uno.valor = "AAAAA";
       diccionario[0] = uno;

       uno = new dato();
       uno.clave = 66;
       uno.valor = "AAAAB";
       diccionario[1] = uno;

       uno = new dato();
       uno.clave = 67;
       uno.valor = "AAABA";
       diccionario[2] = uno;

       uno = new dato();
       uno.clave = 68;
       uno.valor = "AAABB";
       diccionario[3] = uno;

       uno = new dato();
       uno.clave = 69;
       uno.valor = "AABAA";
       diccionario[4] = uno;

       uno = new dato();
       uno.clave = 70;
       uno.valor = "AABAB";
       diccionario[5] = uno;

       uno = new dato();
       uno.clave = 71;
       uno.valor = "AABBA";
       diccionario[6] = uno;

       uno = new dato();
       uno.clave = 72;
       uno.valor = "AABBB";
       diccionario[7] = uno;

       uno = new dato();
       uno.clave = 73;
       uno.valor = "ABAAA";
       diccionario[8] = uno;

       uno = new dato();
       uno.clave = 74;
       uno.valor = "ABAAB";
       diccionario[9] = uno;

       uno = new dato();
       uno.clave = 75;
       uno.valor = "ABABA";
       diccionario[10] = uno;

       uno = new dato();
       uno.clave = 76;
       uno.valor = "ABABB";
       diccionario[11] = uno;

       uno = new dato();
       uno.clave = 77;
       uno.valor = "ABBAA";
       diccionario[12] = uno;

       uno = new dato();
       uno.clave = 78;
       uno.valor = "ABBAB";
       diccionario[13] = uno;

       uno = new dato();
       uno.clave = 79;
       uno.valor = "ABBBA";
       diccionario[14] = uno;

       uno = new dato();
       uno.clave = 80;
       uno.valor = "ABBBB";
       diccionario[15] = uno;

       uno = new dato();
       uno.clave = 81;
       uno.valor = "BAAAA";
       diccionario[16] = uno;

       uno = new dato();
       uno.clave = 82;
       uno.valor = "BAAAB";
       diccionario[17] = uno;

       uno = new dato();
       uno.clave = 83;
       uno.valor = "BAABA";
       diccionario[18] = uno;

       uno = new dato();
       uno.clave = 84;
       uno.valor = "BAABB";
       diccionario[19] = uno;

       uno = new dato();
       uno.clave = 85;
       uno.valor = "BABAA";
       diccionario[20] = uno;

       uno = new dato();
       uno.clave = 86;
       uno.valor = "BABAB";
       diccionario[21] = uno;

       uno = new dato();
       uno.clave = 87;
       uno.valor = "BABBA";
       diccionario[22] = uno;

       uno = new dato();
       uno.clave = 88;
       uno.valor = "BABBB";
       diccionario[23] = uno;

        for(i=0; i<tope; i++)
        {
            if(datos[i] >= 65 && datos[i] < 91)
            {
                aux[i] = 'B';
            }
            else
            {
                aux[i] = 'A';
            }
        }
        
        
        j=0;
        String grupo="";
        int cuenta =0;
        
        for(i=0; i<tope; i++)        
        {
            grupo = grupo + aux[i];
            cuenta ++;
            
            if(cuenta == 5)
            {
                cuartos[j] = grupo;
                cuenta = 0;
                j++;
                grupo = "";
            }
        }
        
        String res ="";
        for(i=0; i<cuartos.length; i++)        
        {
            res = buscar(diccionario,cuartos[i]);
            System.out.print(res);
        }
    }
    
    private static String buscar(dato[] dic, String cad)
    {
        String letra = "";
        int i;
        
        for(i=0; i<24; i++)
        {
            if(cad.equals(dic[i].valor))
            {
                return Character.toString((char) dic[i].clave);
            }
        }
        
        return letra;
    }
    
    
}

