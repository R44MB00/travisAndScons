import java.io.IOException;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public class Main {
	public static void main(String[] args) throws IOException {
	File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        int test_cases = 0;
        while ((line = buffer.readLine()) != null) {
            test_cases++;
            if(test_cases>40) break;
            int valor = Integer.parseInt(line.trim());
            StringBuilder excel = new StringBuilder();
	    if(valor<=18278){
                while (valor-- > 0) {
                    excel.append((char)('A' + (valor % 26)));
	            valor /= 26;
                }	
	        System.out.println(excel.reverse().toString());
            }
        }
        buffer.close();
    }
}

