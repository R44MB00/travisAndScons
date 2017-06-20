
import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            // Process line of input Here
            String [] items = line.split(",");
            int firstItem=Integer.parseInt(items[0]);
            int division = firstItem/Integer.parseInt(items[1]);
            if (division==0) {
                firstItem=Integer.parseInt(items[0])*10;

            }

            int result = Integer.parseInt(items[0])-(Integer.parseInt(items[1]) * division);

            System.out.println(result);   
        }
    }
}
