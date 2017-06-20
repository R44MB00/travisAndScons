import java.io.*;
import java.lang.*;

//este codigo lee unos numero de un fichero y suma los digitos de cada numero

public class Main {
	public static void main (String[] args) throws IOException {
		File file = new File(args[0]);
		BufferedReader buffer = new BufferedReader(new FileReader(file));
		String line;
		while ((line = buffer.readLine()) != null) {
			int sum=0;
      String[] digits = line.split("");
			for (int i = 0; i < digits.length; i++) {
				sum = sum + Integer.valueOf(digits[i]);
      }
      System.out.println(sum);
		}
	}
}
