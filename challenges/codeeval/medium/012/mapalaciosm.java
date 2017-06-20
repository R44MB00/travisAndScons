import java.io.*;
import java.util.*; 

/*
 * Author: Miguel Palacios 
 * Description: Finds the first non-repeated character in a string.
 *  
 */

class First {
    public static void main(String[] args) throws FileNotFoundException {
    	Scanner _fileinput = new Scanner(new FileReader(args[0]));
		
		while(_fileinput.hasNextLine()) {
			String _line = _fileinput.nextLine(); 
			for (int i = 0; i < _line.length(); i++) {
				String _character = _line.charAt(i) + ""; 
				if (!_line.substring(0, i).contains(_character) && !_line.substring(i + 1).contains(_character)) {
					System.out.println(_character);  
					break;
				}
			}
		}
		_fileinput.close();
    }
}
