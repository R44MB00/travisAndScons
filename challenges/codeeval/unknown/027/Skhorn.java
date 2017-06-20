import java.io.*;
import java.util.*;
import java.util.Collections;
import java.util.Scanner;

public class Main {
    public static void main (String[] args) throws IOException {
        String line;
        File file = new File(args[0]);
        
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        
        while ((line = buffer.readLine()) != null) {
            //System.out.println(line);
            int bin = Integer.parseInt(line);
            System.out.println(Integer.toBinaryString(bin));

        }
    }
}