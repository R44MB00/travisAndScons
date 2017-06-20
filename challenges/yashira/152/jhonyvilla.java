package cifrado;

public class Cifrado 
{
    public static void main(String[] args) 
    {        
        String letras[] = {"a","b","c","d","e","f","g","h","i","j","k","l","m",
            "n","o","p","q","r","s","t","u","v","w","x","y","z"};
        int numeros[] = {83, 82, 167, 164, 28, 242, 263, 52, 159, 56, 44, 137,
            208, 233, 185, 108, 2, 164, 27, 329, 260, 55, 274, 134, 89, 277,
            238, 149, 66, 89, 286, 95, 316, 96, 119, 254, 160, 200, 227, 156,
            238, 96, 252, 24, 39, 132, 12, 208, 174, 149, 290, 225};
        String result ="";
        for (int i=0; i<numeros.length; i++)
        {
            int pos = numeros[i]%26;
            result += letras[pos];            
        }
        System.out.print(result);
    }
}
