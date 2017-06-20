import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
public class Main {
    static int Bits(int numero) {
        int count= 0;
        while(numero > 0) {
            count++;
            numero = numero >> 2;
        }
        return count;
    }
    public static void main(String[] args) throws IOException{
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            int valor = Integer.parseInt(line);
            System.out.println(Bits(valor));
        }
        buffer.close();
    }
}
