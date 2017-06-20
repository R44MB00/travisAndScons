import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] words = line.split(" ");
            String longest = words[0];
            for (int i=0; i<words.length; i++){
                if (words[i].length() > longest.length()){
                    longest = words[i];
                }
            }
            System.out.println(longest);
        }
    }
}
