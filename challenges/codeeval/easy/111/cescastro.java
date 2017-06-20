import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            // Process line of input Here
            String palbs[] = line.split(" ");
            String masLarga = palbs[0];
            for(int i = 0; i < palbs.length; i++){
                if(masLarga.length() < palbs[i].length()){
                    masLarga = palbs[i];
                }
            }
            System.out.println(masLarga);
        }
    }
}
