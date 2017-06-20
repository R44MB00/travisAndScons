package retos;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
/*
 * Multiply list
 * CodeEval: Easy
 * URL: https://www.codeeval.com/open_challenge_scores/?pkbid=113
 */
public class Multiples_of_a_number {
	
	private static int multiplies(ArrayList  a) {
		int num = 1;
		int con =  Integer.parseInt((String) a.get(0));
		int x = Integer.parseInt((String) a.get(1));
		int s = 0;
		do {
			//con++;
			num += 1;
			
		} while (!(x*num >= con));
		return x*num;
		
	}
	public static void main(String[] args)throws IOException {
		File file = new File("/home/camilo/test_15");
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
        	 ArrayList<String> list = new ArrayList<String>(Arrays.asList(line.split(",")));
		
		//System.out.println(Multiples_of_a_number.multiplies(list));
        	System.out.println(multiplies(list));
       
	}
}
}
