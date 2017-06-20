import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            // Process line of input Here
            int numr = Integer.parseInt(line);
            int result = 0;
            while (0 < numr)
            {
                result += numr % 10;
                numr = numr / 10;
            }
            System.out.println(result);
        }
    }
}
