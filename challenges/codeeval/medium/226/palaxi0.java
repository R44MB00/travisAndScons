import java.util.*;
import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String stringe = line;
            char [] stringear = stringe.toCharArray();
            HashMap<String,String> h = new HashMap<String,String>(){{
                put ("a","u"); put("b","v"); put("c","w");
                put("d","x");put("e","y"); put("f","z");
                put("g","n"); put("h","o"); put("i","p");
                put("i","p");put("j","q");put("k","r");
                put("l","s");put("m","t"); put("n","g");
                put("o","h");put("p","i");put("q","j");
                put("r","k"); put("s","l"); put("t","m");
                put("u","a"); put("v","b"); put("w","c");
                put("x","d"); put("y","e"); put("z","f");
            }};
            for (int i = 0; i < stringear.length; i++) {
                System.out.print(h.get(Character.toString(stringear[i])));
            }
            System.out.println();
        }
    }
}
