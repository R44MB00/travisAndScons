package cesar;

public class Cesar 
{
    public static void main(String[] args) 
    {
        String vector[] = {"z","y","x","w","v","u","t","s","r","q","p","o","n","m"
        ,"l","k","j","i","h","g","f","e","d","c","b","a"};
        String texto = "pwalddhzcopdufwtzczxl";
        for (int i=0; i<25; i++)
        {
            String decryp = "";
            for (int j=0; j<texto.length(); j++)
            {
                int pos = posicion(String.valueOf(texto.charAt(j)), vector);
                int x = pos + i;
                if (x > 25)
                {
                    x = x-26;
                }
                decryp = decryp+vector[x];
            }
            System.out.println(decryp);
        }
    }
    
    public static int posicion(String letra, String [] vector)
    {
        int pos=-1;
        for (int i=0; i<vector.length;i++)
        {
            if (letra.equals(vector[i]))
            {
                pos = i;
                break;
            }
        }
        return pos;
    }
}