import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] lineArray=line.split(" ");
            System.out.println(lineArray[lineArray.length-2]);
            // Process line of input Here
        }
    }
}
