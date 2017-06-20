
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class Main {

    public static void main(String[] args) throws IOException {

        BufferedReader entrada = new BufferedReader(new FileReader(args[0]));

        String linea;
        
        while ((linea = entrada.readLine()) != null) {

            String[] line = linea.split(";")[1].split(",");
            
            String cadena = "";
            
            for (int i = 0; i < line.length - 1; i++) {
                for (int j = i + 1; j < line.length; j++) {
                    if(Integer.parseInt(line[i]) == Integer.parseInt(line[j])){
                        cadena = line[i];
                    }
                }
            }
            System.out.println(cadena);
        }
    }
}
