import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        try (BufferedReader buffer = new BufferedReader(new FileReader(file))) {
            String str;
            while ((str = buffer.readLine()) != null) {
                String cadena=str.replaceAll("[^a-zA-Z]+"," ");
                cadena=cadena.trim();
                System.out.println(cadena.toLowerCase());
            }
        }
    }
}
