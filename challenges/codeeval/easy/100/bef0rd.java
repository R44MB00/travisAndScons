
import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
		int sum = 0;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            if ((Float.parseFloat(line) % 2.0) == 0) {
				System.out.println(1);				
			} else {
				System.out.println(0);				
			}
        }

    }
	
}

