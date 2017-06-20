import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String resp = "";
            for(int i = 0; i < line.length(); i++){
                if(line.charAt(i) == '@'){
                    resp = "true";
                }else{
                    resp = "false";
                }
            }
            System.out.println(resp);
        }
    }
}
