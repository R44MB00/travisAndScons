import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            // Process line of input Here
            String dos[] = line.split(",");
            String palbs = dos[0];
            String busca = dos[1];
            char bsc = busca.charAt(0);
            int resp = 0;
            for(int i = 0; i < palbs.length();i++){
                if(palbs.charAt(i) == bsc){
                    resp = i;
                }
            }
            System.out.println(resp);
        }
    }
}
