/**
 * Way Too Long Words
 * Abbreviate the word.<br>
 * This abbreviation is made like this: we write down the first and the last letter of a 
 * word and between them we write the number of letters between the first and the last letters. 
 * That number is in decimal system and doesn't contain any leading zeroes. 
 */
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class erisohv {

	private static void processInput() throws NumberFormatException, IOException{
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		int qty = Integer.parseInt(reader.readLine());
		for (int i = 0; i < qty; i++){
			String word = reader.readLine();
			
			if  (word.length() <= 10)
				System.out.println(word);
			else
				System.out.println(String.valueOf(word.charAt(0)) + (word.length()-2) 
						+ String.valueOf(word.charAt(word.length()-1)));
		}
		reader.close();
	}
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		processInput();
	}
}
