import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] parts = line.split(" ");
            String words = parts[0];
            String binary = parts[1];
            for (int i=0; i < words.length();i++ ) {
                char c = words.charAt(i);
                if (binary.charAt(i) == '1') {
                    System.out.print(Character.toUpperCase(c));
                } else {
                    System.out.print(c);
                }
            }
            System.out.println("");
        }
    }
}
