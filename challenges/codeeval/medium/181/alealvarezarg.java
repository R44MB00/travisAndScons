
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class Main {

    public static void main(String[] args) throws IOException {

        BufferedReader entrada = new BufferedReader(new FileReader(args[0]));

        String linea;

        while ((linea = entrada.readLine()) != null) {
            if (!"".equals(linea.trim())) {

                String line = linea;

                String caracters = " !\"#$%&'()*+,-./0123456789:<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

                String key = line.split(";")[0];
                String cipher = line.split(";")[1];

                String key2 = key;
                while (key2.length() < cipher.length()) {
                    key2 = key2 + key;
                }
                key = key2.substring(0, cipher.length());

                String cadena = "";
                for (int i = 0; i < cipher.length(); i++) {
                    int index = caracters.indexOf(cipher.charAt(i));
                    index = index - Integer.parseInt(key.charAt(i) + "");
                    if (index < 0) {
                        index = index + caracters.length();
                    }
                    cadena = cadena + caracters.charAt(index);
                }

                System.out.println(cadena.trim());

            }
        }
    }
}
