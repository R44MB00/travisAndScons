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
            String str[] = line.split(", ");
            String str1[] = str[0].split("");
            String str2[] = str[1].split("");
            for (int i=0; i<str1.length; i++){
                for (int k=0; k<str2.length; k++){
                    if (str1[i].equalsIgnoreCase(str2[k])){
                        str1[i]="";
                    }                
                }  
            }
            StringBuilder sb = new StringBuilder();
            for (String s:str1){
                if (sb.length()>0) sb.append("");
                sb.append(s);
            }
            System.out.println(sb);
        }
        buffer.close();
    }
}
