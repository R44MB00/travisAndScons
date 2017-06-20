import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            String[] lineArray =line.trim().split(",");
            
            String a=lineArray[0];
            char b = lineArray[1].toCharArray()[0];
            System.out.println(a.lastIndexOf(b));
            
        }
    }
}
