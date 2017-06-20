import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws FileNotFoundException {
        File file = new File(args[0]);
        Scanner scanner = new Scanner(file);
        while(scanner.hasNextLine()) {
            String str = ""; 
            String line = scanner.nextLine().toLowerCase();
            String abecedario = "abcdefghijklmnopqrstuvwxyz";
            for (int i = 0; i < abecedario.length(); i++) {
                    String caracter = abecedario.charAt(i) + "";
                    if (!line.contains(caracter)) {
                            str += caracter; 
                    }
            }
            if(str.isEmpty()) {
                    System.out.println("NULL");
            } else {
                    System.out.println(str);
            }
        }
    }
}

