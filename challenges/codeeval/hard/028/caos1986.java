import java.io.*;
import java.util.regex.*;

public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] l = line.split(",");
            String iz = l[1].replaceAll("*",".*");
            String dr = l[0];
            boolean b = Pattern.matches(iz,dr);
            System.out.println(b);
        }
    }
}
