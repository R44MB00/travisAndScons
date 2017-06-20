import java.util.Scanner;

public class Wc_cryptocesar2 {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        String cadena = sc.nextLine();
        
        String[] v = cadena.split(" ");
        
        for(int i = 0; i<160; i++)
        {
            System.out.println(CifradoCesar(v,i));
        }
        
    }
    
    
    public static String CifradoCesar(String[] Cadena, int dz)
    {
        String Cifrado = "";
        int Ascii;
        int i;
        int tmp = 0;

        for (i = 0; i < Cadena.length; i++ )
        {
            Ascii = Integer.parseInt(Cadena[i],16);

            if(Ascii != 32)
            {
                Ascii = Ascii - dz;

                if (Ascii < 32)
                {
                    tmp = 32 - (Ascii);
                    Ascii = 161 - tmp;
                }
            }

            Cifrado = Cifrado + (char) Ascii;
        }

        return Cifrado;
    }
    
}
