
import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String stringe = line;
            int total = 0;
            for (int i = 0; i <= stringe.length()-5; i++) {
            if ("<--<<".equals(stringe.substring(i,i+5))){
                    total++;
                } 
            if (">>-->".equals(stringe.substring(i, i+5))){
                    total++;
                } 
         }
        System.out.println(total);
        }
    }
}
