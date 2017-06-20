import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String str;
            while ((str = buffer.readLine()) != null) {
                String[] cadena=str.split("");
                int sum=0;
                for (int i=1; i<cadena.length;i++){
                    sum=sum+Integer.parseInt(cadena[i]);
                }
                System.out.println(sum);
            }
        
    }
}
