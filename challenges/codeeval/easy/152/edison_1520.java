import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String str;
        while ((str = buffer.readLine()) != null) {
            str = str.trim();
            int line = Integer.parseInt(str);
            if((line >= 0) && (line <= 2)) {
                System.out.println("Still in Mama's arms");
            }
            else if( (line == 3) || (line == 4) ) {
                System.out.println("Preschool Maniac");
            }
            else if((line >= 5) && (line <= 11)) {
                System.out.println("Elementary school");
            }
            else if((line >= 12) && (line <= 14)){
                System.out.println("Middle school");
            }
            else if((line >= 15) && (line <= 18)){
                System.out.println("High school");
            }
            else if((line >= 19) && (line <= 22)){
                System.out.println("College");
            }
            else if((line >= 23) && (line <= 65)) {
                System.out.println("Working for the man");
            }
            else if((line >= 66) && (line <= 100)) {
                System.out.println("The Golden Years");
            }
            else {
                System.out.println("This program is for humans");
            }
            line++;
        } buffer.close();
    }
}
