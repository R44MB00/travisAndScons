package retos;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
/**
* Title: Hidden Digits
**/
public class Hidden_Digits {
	public static String hidden(String word){
		String out = "";
		int con = 0;
		ArrayList<Character> num= new ArrayList<Character>();
		for (int i = 0; i < 9; i++) {
			num.add(((char) ('0'+i)));
		}
		HashMap<Character, String> nums = new HashMap<Character, String>();

		for (int i = 97; i <= 106; i++) {
			nums.put((char)i, con + "");
			con++;
		}
		for (int i = 0; i < word.length(); i++) {
			if(nums.containsKey(word.charAt(i))){
				out += nums.get(word.charAt(i));
			}
			else if (num.contains(word.charAt(i))) {
				out += word.charAt(i);
			}
		}
		if (out== "") out = "NONE";

		return out;
	}
	/**
	+ Main function
	**/
	public static void main(String[] args)throws IOException {
		File file = new File("/home/camilo/test_25");
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
        	 //ArrayList<String> list = new ArrayList<String>(Arrays.asList(line.split(",")));

		System.out.println(hidden(line));
	}
}
}
