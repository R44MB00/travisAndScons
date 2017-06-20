import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
             // Process line of input Here
            for(int i=0; i<line.length(); ++i){
                char c = line.charAt(i); //Este método devuelve el carácter situado en el índice especificado de la cadena.
                if(Character.isUpperCase(c)) //Determina si el carácter especificado es un carácter en mayúscula.
					System.out.print(Character.toLowerCase(c)); // Convierte caracter a minuscula si se cumple el if
                else 
					System.out.print(c);
            }
            System.out.println();
        }
    }
}
