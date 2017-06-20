
import java.io.*;
import java.util.*; 

/*
 * Author: Miguel Palacios 
 * Description: takes a sentence and returns all the letters it is misssing from being a pangram.
 * Input example: 
 * A quick brown fox jumps over the lazy dog
 * A slow yellow fox crawls under the proactive dog
 *
 */

 class Panagrams {
    public static void main(String[] args) throws FileNotFoundException {
    	Scanner _fileinput = new Scanner(new FileReader(args[0]));
    	final String ALPHABET = "abcdefghijklmnopqrstuvwxyz";
		
		while(_fileinput.hasNextLine()) {
			String _missingletters = ""; 
			String _streamline = _fileinput.nextLine().toLowerCase();
			
			for (int i = 0; i < ALPHABET.length(); i++) {
				String c = ALPHABET.charAt(i) + "";
				if (!_streamline.contains(c)) {
					_missingletters += c; 
				}
			}
			
			if(_missingletters.isEmpty()) {
				System.out.println("NULL");
			} else {
				System.out.println(_missingletters);
			}
		}
    }
}
