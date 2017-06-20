import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        String prim = " ";
        String sec =  " ";
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            // Process line of input Here
            if(prim.length() < line.length()){
                prim = line;
            }else{
                if(prim.length()-1 < line.length()){
                    sec = line;
                }
            }
            
        }
        System.out.println(prim);
        System.out.println(sec);
    }
}
