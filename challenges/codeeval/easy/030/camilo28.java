package retos;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/**
 * Title: set intersection
 * @author camilo
 *CodeEval: Easy
 *url:https://www.codeeval.com/open_challenges/30/
 */
public class set {
	/**
	 * intersection two arrays
	 * @param mylist: list with values
	 * @return the intersection of the two sets
	 */
	public static String intersection(ArrayList<String> mylist){
		String out = "";
		ArrayList<String> setA = new ArrayList<String>(Arrays.asList(( mylist).get(0).split(",")));
		ArrayList<String> setB = new ArrayList<String>(Arrays.asList(( mylist).get(1).split(",")));
		for (String num : setA) {
			if (setB.contains(num)) {
				if (out.equals("")){
				 out = ""+ num;	
				}
				else
				out = out + "," + num;
			
			}
			
		}
		return out;
	}
	
	/**
	 * Main 
	 * @param args
	 * @throws IOException
	 */
	public static void main(String[] args)throws IOException {
		File file = new File("/home/camilo/test_22");
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
        	 ArrayList<String> list = new ArrayList<String>(Arrays.asList(line.split(";")));
		
		System.out.println(intersection(list));
	}
}
	
	
}
