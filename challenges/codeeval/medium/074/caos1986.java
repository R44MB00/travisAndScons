import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            int x = Integer.parseInt(line);
            int m5 = x/5;
            int m3 = (x%5)/3;
            int m1 = ((x%5)%3);
            System.out.println(m5+m3+m1);
        }
    }
}
