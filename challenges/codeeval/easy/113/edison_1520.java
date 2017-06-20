import java.io.IOException;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public class Main {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String str[] = line.split(" \\| ");
            String vector1[]=str[0].split(" ");
            String vector2[]=str[1].split(" ");
            String Resultado[] = new String [vector1.length];
            for (int i=0; i<vector1.length; i++){
                Resultado[i]= ""+(Integer.parseInt(vector1[i])*Integer.parseInt(vector2[i]));
            }
            StringBuilder sb = new StringBuilder();
            for (String s:Resultado){
                if (sb.length()>0) sb.append(" ");
                sb.append(s);
            }
            System.out.println(sb);
        }
        buffer.close();
    }
}
