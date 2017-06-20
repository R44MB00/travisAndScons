
import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String stringe = line;
            String word = stringe.split(" ")[0];
            String binary = stringe.split(" ")[1];
            char []vecword = word.toCharArray();
            char [] vecbin = binary.toCharArray();
            for (int i = 0; i < vecbin.length; i++) {
                if(vecbin[i] == '1'){
                    vecword[i]= Character.toUpperCase(vecword[i]);
                }else{
                    vecword[i]= Character.toLowerCase(vecword[i]);
                }
            }
            System.out.println(vecword);
        }
    }
}
