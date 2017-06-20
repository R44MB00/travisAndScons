import java.io.*;
import java.lang.*;

//este codigo lee las palabras de cada linea de un fichero y las imprime al reves

public class Main {
 public static void main (String[] args) throws IOException {
  File file = new File(args[0]);
  BufferedReader buffer = new BufferedReader(new FileReader(file));
  String line;
  int cont=1;
  while ((line = buffer.readLine()) != null) {
   StringBuilder final_string = new StringBuilder(line.length());		
   char[] letters = line.toCharArray(); //separo letras
   for (int i = 0; i < letters.length; i++) {
    if (Character.isLetter(letters[i])){
     final_string.append((char) Character.toLowerCase(letters[i]));
     cont=1;
     }else{
      if(final_string.length() > 0 && cont==1){	
       final_string.append(' ');
       cont++;
      }
     }
   }	
   System.out.println(final_string);
  }
 }
}
