import java.io.*;
import java.lang.*;

//este codigo abre un fichero y lee dos numeros separados por comas y encuentra el minimo multiplo del primer numero que sea mayor o igual al segundo numero

public class Main {
	public static void main (String[] args) throws IOException {
		File file = new File(args[0]);
    BufferedReader buffer = new BufferedReader(new FileReader(file));
    String line;
    int x = 0;
    int n = 0;
    int compare = 0;
		while ((line = buffer.readLine()) != null) {
    	line = line.trim();
    	x = Integer.parseInt(line.split(",")[0]);
      n = Integer.parseInt(line.split(",")[1]);
      compare = n;
      while( compare < x ){
      	compare  = compare + n;
      }
      System.out.print(Integer.toString(compare)+"\n");
		}
	}
}

