import java.io.*;
import java.util.*;
import java.util.Collections;

public class Main {
    public static void main (String[] args) throws IOException {
        String line;
        String new_line[];
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        while ((line = buffer.readLine()) != null) {
            new_line = line.trim().split("[(),\\r?\\n\\s+]");
            //Math.pow
            int x1, x2, y1, y2;
            x1 = Integer.parseInt(new_line[1]);
            y1 = Integer.parseInt(new_line[3]);
            x2 = Integer.parseInt(new_line[6]);
            y2 = Integer.parseInt(new_line[8]);

            System.out.println(Math.round(Math.sqrt(Math.pow(x2-x1,2)+Math.pow(y2-y1, 2))));

        }

        
            
    }
}