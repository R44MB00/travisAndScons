import java.io.*;
import java.lang.*;

//este codigo lee unos numeros de un fichero y los suma

public class Main {
	public static void main (String[] args) throws IOException {
   File file = new File(args[0]);
   BufferedReader buffer = new BufferedReader(new FileReader(file));
   String line;
	 int sum=0;
   while ((line = buffer.readLine()) != null) {      		
    sum = sum + Integer.valueOf(line);
   }
	System.out.println(sum);
 }
}
