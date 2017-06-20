import java.io.IOException;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public class Main {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line = buffer.readLine();
        String[] str = new String[Integer.parseInt(line)];
        for (int i = 0; i < str.length; i++) {
               str[i] = "0";
        }
        while ((line = buffer.readLine()) != null) {
            line = line.trim();        	
            for (int i = 0; i < str.length; i++) {        		
                if(line.length()>str[i].length()){
                    for (int k = str.length-1; k > i; k--) {
                            str[k] = str[k-1]; 
                    }
                    str[i] = line;
                    break;
                }
            }
        }
        buffer.close();
        for (int j = 0; j < str.length; j++) {
            System.out.println(str[j]);			
        }
    }
}
