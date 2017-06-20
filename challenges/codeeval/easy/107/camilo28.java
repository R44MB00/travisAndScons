package retos;

import java.awt.List;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/**
 * Title: Shortest repetition
 * @author camilo
 * CodeEval:Easy
 * url: https://www.codeeval.com/open_challenges/107/
 */
public class Shortest {
/**
 * this function compute the num of patrons in a string
 * @param word: word that contain the cicles
 * @return num the patrons
 */

	public static int shrotest(String word){
		int con = 0;
		String cicle = word.charAt(0) + "";
		ArrayList<Character> list = new ArrayList<Character>();
		for (int i = 0; i < word.length(); i++) {
			if(!list.contains(word.charAt(i))){
				list.add(word.charAt(i));
			}

		}

		con = list.size();
		return con;
	}
/**
 * Main method
 * @param args
 * @throws IOException
 */
	public static void main(String[] args)throws IOException {
		File file = new File("/home/camilo/test_23");
		BufferedReader buffer = new BufferedReader(new FileReader(file));
		String line;
		while ((line = buffer.readLine()) != null) {
			//ArrayList<String> list = new ArrayList<String>(Arrays.asList(line.split(",")));
			String word = line.trim();
			//System.out.println(Multiples_of_a_number.multiplies(list));
			System.out.println(shrotest(word));

		}
	}
}
