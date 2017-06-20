import java.io.*;
public class penultimate_word {
    public static void main (String[] args) throws IOException {
        //args[0])
        File file = new File(".test_04");
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] word = line.split(" ");
            System.out.println(word[word.length-2]);
             //System.out.println(line);
            // Process line of input Here
        }
    }
}
