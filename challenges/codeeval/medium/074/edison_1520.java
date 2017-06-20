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
        String line;
        while ((line = buf.readLine()) != null) {
            int numero = Integer.parseInt(line.trim());
            int cinco = numero / 5;
            numero -= cinco * 5;
            int tres = numero / 3;
            numero -= tres * 3;
            int uno = numero;
            System.out.println(cinco+tres+uno);
        }
    }
}
