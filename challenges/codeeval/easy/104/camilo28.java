package retos;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
/**
 * Title: Word to Digit
 * @author camilo
 * CodeEval: Easy
 * Url: https://www.codeeval.com/open_challenges/104/
 */
public class LetterToNumber {
	/**
	 * change a string to a num
	 * @param mylist: list the nums
	 * @return out: return the intenger nums
	 */
 public static String conver(ArrayList<String> mylist){
	 String out = "";
	 //hash with the nums
	 HashMap<String, Integer> nums = new HashMap<String, Integer>();
	 nums.put("zero", 0);
	 nums.put("one", 1);
	 nums.put("two", 2);
	 nums.put("three", 3);
	 nums.put("four", 4);
	 nums.put("five", 5);
	 nums.put("six", 6);
	 nums.put("seven", 7);
	 nums.put("eight", 8);
	 nums.put("nine", 9);
	 
	 for (String value : mylist) {
		if (nums.containsKey(value)) {
			out = out + "" + nums.get(value); 
		}
	}
		
	 return out;
 }
 /**
  * Main method
  * @param args
  * @throws IOException
  */
	public static void main(String[] args)throws IOException {
		File file = new File("/home/camilo/test_22");
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
        	 ArrayList<String> list = new ArrayList<String>(Arrays.asList(line.split(";")));
        	 System.out.println(conver(list));
	}
}
}
