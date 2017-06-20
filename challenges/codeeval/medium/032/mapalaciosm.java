import java.io.*;
import java.util.*; 

public class TrailingString {
    public static void main(String[] args) throws FileNotFoundException {
		Scanner _fileinput = new Scanner(new FileReader(args[0]));
		
		while(_fileinput.hasNextLine()) {
			String[] _split = _fileinput.nextLine().split(","); 
			String _phrase = _split[0].trim(); 
			String _end = _split[1].trim(); 
			if (_end.length() > _phrase.length()) {
				System.out.println(0); 
			} else {
				String _substring = _phrase.substring(_phrase.length() - _end.length());
				if(_substring.equals(_end)) {
					System.out.println(1);
				} else {
					System.out.println(0); 
				}				
			}
		}
    }
}
