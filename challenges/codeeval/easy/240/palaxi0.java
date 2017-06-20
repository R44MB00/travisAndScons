
import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            int k = Integer.parseInt(line);
            String comma = "";
            int [] mersenne_primes = {3,7,31,127,2047};
            for (int i = 0; i < mersenne_primes.length; i++) 
                if (mersenne_primes[i]<k)
                   comma +=mersenne_primes[i]+", ";
            if(comma.charAt(comma.length()-2) == ',')
                comma = comma.substring(0,comma.length()-2);
            System.out.println(comma); 
        }
    }
}
