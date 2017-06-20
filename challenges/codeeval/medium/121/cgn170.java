/**
 * Created by carlos on 7/03/16.
 */
import java.io.*;
import java.util.Hashtable;

public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        Hashtable<String,String> offset=new Hashtable<String,String>();
        offset.put("y","a");
        offset.put("n","b");
        offset.put("f","c");
        offset.put("i","d");
        offset.put("c","e");
        offset.put("w","f");
        offset.put("l","g");
        offset.put("b","h");
        offset.put("k","i");
        offset.put("u","j");
        offset.put("o","k");
        offset.put("m","l");
        offset.put("x","m");
        offset.put("s","n");
        offset.put("e","o");
        offset.put("v","p");
        offset.put("z","q");
        offset.put("p","r");
        offset.put("d","s");
        offset.put("r","t");
        offset.put("j","u");
        offset.put("g","v");
        offset.put("t","w");
        offset.put("h","x");
        offset.put("a","y");
        offset.put("q","z");

        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            for(int i=0;i<line.length();i++){
                if(line.charAt(i)==' '){
                    System.out.print(" ");
                }
                else{
                    System.out.print(offset.get(Character.toString(line.charAt(i))));
                }
            }
            System.out.println();
        }
    }
}
