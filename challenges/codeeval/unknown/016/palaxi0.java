
import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            int num = Integer.parseInt(line);
            String numbin = Integer.toBinaryString(num);
            char[] arraynumbin = numbin.toCharArray();
            int total = 0;
            for (int i= 0; i <arraynumbin.length; i++) {
                if (arraynumbin[i] == '1'){
                    total+=1; 
                }
            
            }
            System.out.println(total);
        }
    }
}
