import java.io.*;
import java.lang.*;

//este codigo lee unos numero de un fichero y suma los digitos de cada numero

public class capitalize {
 public static void main (String[] args) throws IOException {
  File file = new File(args[0]);
  BufferedReader buffer = new BufferedReader(new FileReader(file));
  String line;
  while ((line = buffer.readLine()) != null) {
   String[] words = line.split(" ");	
   for (int i = 0; i < words.length; i++) {
    char[] letters = words[i].toCharArray(); 
    letters[0]=Character.toUpperCase(letters[0]);
    System.out.print(String.valueOf(letters)+" ");	
   }
   System.out.println("");			
  }
 }
}
