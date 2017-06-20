import java.util.*;
import java.io.*;

/*
 * Author: Miguel Palacios 
 * Description: Reads a file and prints to stdout the specified number of the longest lines that are sorted based on their length.
 * Input example: 
 * 2
 * Hello World
 * Codeval
 * Quick Fox
 * A
 * San Francisco
 *
 */

public class LongestLines {
    public static void main (String[] args) throws FileNotFoundException {
     Scanner _fileinput = new Scanner(new FileReader(args[0]));
     short _capacity=_fileinput.nextShort();
	 List<String> _words = new ArrayList<String>(); 
	 while (_fileinput.hasNextLine()) {
		 String _strBuffered=_fileinput.nextLine();
		 if (_strBuffered.length() > 0 && _words.size()  < _capacity){
			 _words.add(_strBuffered);
		 } else{
			 String _remove= "";
			 for (String _str : _words) {
				 if (_remove.length()==0 || _remove.length() >_str.length()){
					 _remove=_str; 
				 }
			 }
			 if (_remove.length() <_strBuffered.length()){
					_words.remove(_remove);
					_words.add(_strBuffered);
			 }
		 }
	 }
	 _fileinput.close();
	 Collections.sort(_words, sortLength);
	 for (String _str : _words) {
			System.out.println(_str); 
	 }
   }
   public static Comparator<String> sortLength = new Comparator<String>()
   {
       @Override
       public int compare(String o1, String o2)
       {
           if(o1.length() > o2.length())
               return -1;

           if(o2.length() > o1.length())
               return 1;

           return 0;
       }
   }; 
    
    
}
