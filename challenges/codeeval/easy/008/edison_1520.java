import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String reverse="";
            String world[] = line.split(" ");
            for(int pos = world.length-1; pos>= 0 ;pos--){
                reverse += world[pos]+" ";
            }
            System.out.println(reverse);
        }
        buffer.close();
    }
}
