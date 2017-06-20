import java.util.Scanner;

public class Wg_74 {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        String cadena = sc.nextLine();
        
        cadena = cadena.toUpperCase();
        
        for(int i = 1; i<3; i++)
        {
            cadena = CifradoCesar(cadena,3);
            cadena = cadena.toUpperCase();
        }
        
          System.out.println(cadena);
        
    }
    
    public static String CifradoCesar(String Cadena, int dz)
        {
            String Cifrado = "";
            int[] Ascii = new int[Cadena.length()];
            int i;
            int tmp = 0;

            for (i = 0; i < Cadena.length();i++ )
            {
                Ascii[i] = Cadena.charAt(i);

                if(Ascii[i] != 32)
                {
                    Ascii[i] = Ascii[i] - dz;

                    if (Ascii[i] < 65)
                    {
                        tmp = 65 - (Ascii[i]);
                        Ascii[i] = 91 - tmp;
                    }
                }
                
                if(i==15)
                {
                    int x = 1;
                }

                Cifrado = Cifrado + (char) Ascii[i];
            }

            return Cifrado;
        }
       
}
