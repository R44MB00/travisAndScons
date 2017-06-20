import java.io.*;

public class Main
{
    public static void main (String[] args)
            throws IOException
    {
        File file = new File(args[0]);
        BufferedReader in = new BufferedReader(new FileReader(file));
        String line;

        while ((line = in.readLine()) != null) {
            String tam_palabra = null; // la defino como cadena vacia para cargarla la primera vez
            line = line.trim();

            for (String palabra : line.split(" ")) {
                if (tam_palabra == null) {
                    tam_palabra = palabra;
                } else if (palabra.length() > tam_palabra.length()) {
                    tam_palabra = palabra;
                }
            }

            System.out.println(tam_palabra);
        }
    }
}
