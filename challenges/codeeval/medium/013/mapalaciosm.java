
import java.io.*;
import java.util.*; 

/*
 * Author: Miguel Palacios 
 * Description: Removes specific characters from a string. 
 * Input example: 
 * how are you, abc
 * hello world, def
 *
 */

public class RemoveCharacters {
    public static void main(String[] args) throws FileNotFoundException {
    	Scanner _fileinput = new Scanner(new FileReader(args[0]));
    	String result = "";
		while(_fileinput.hasNextLine()) {
			result = "";
			String[] split = _fileinput.nextLine().split(",");
			String _phrase = split[0].trim();
			String _characters = split[1].trim();
			for (int i = 0; i < _phrase.length(); i++) {
				String _character = "" + _phrase.charAt(i); 
				if(!_characters.contains(_character)) 
					result += _character; 
			}
			
			System.out.println(result.trim()); 
		}
		_fileinput.close();
    }
}
