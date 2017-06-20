import java.util.Scanner;
public class Solution 
{
    public static void main(String[] args) 
    {          
        Scanner read = new Scanner(System.in);  
        int n = read.nextInt();
        String cadena = read.nextLine();
        for (int i=0; i<n; i++)
        {            
            cadena = read.nextLine();            
            cadena = borrar_caracter(cadena);
            cadena = cadena.toLowerCase();            
            String inv = invertir(cadena);            
            char palindro = 'N';
            for (int j=0; j<cadena.length(); j++)
            {
                if (cadena.charAt(j) == inv.charAt(j))
                {                    
                    palindro = 'Y';
                }
                else
                {
                    palindro = 'N';
                    break;
                }
            }
            System.out.print(palindro +" ");
        }
    }  
    
    public static String invertir(String text)
    {
        String invertido = ""; 
        for (int i=text.length()-1; i>=0; i--)
        {
            invertido = invertido + text.charAt(i);
        }
        return invertido;
    }
    
    public static String borrar_caracter(String cadena)
    {
        String resultado = "";
        for (int i=0; i<cadena.length();i++)
        {
            if ((cadena.charAt(i) != ' ') && (cadena.charAt(i) != '.') &&
                    (cadena.charAt(i) != ',') && (cadena.charAt(i) != '-'))
            {
                resultado += cadena.charAt(i);                
            }
        }
        return resultado;
    }
}