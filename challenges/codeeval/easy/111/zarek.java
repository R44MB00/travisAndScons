import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            longWord(line);
        }
    }
    public static void longWord(String givenString) {
        string palabraLarga = "";
        String[] arr = givenString.split(" ");
        for (int i=0; i < arr.length() ; i++ ) {
            if (palabraLarga.length() < arr[i].length()) {
                palabraLarga = arr[i];
            }
            
        }
        System.out.println(palabraLarga);
      

    }  
}
