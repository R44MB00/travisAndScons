import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class Main
{
    public static void main (String[] args) throws IOException
    {
        File file = new File(args[0]);
        BufferedReader buf = new BufferedReader(new FileReader(file));
        String str;
        while ((str = buf.readLine()) != null) {
            String[] line = str.trim().split(",");
            String palabra = line[0];
            char letra = line[1].toCharArray()[0];
            System.out.println(palabra.lastIndexOf(letra));
        }
    }
}
