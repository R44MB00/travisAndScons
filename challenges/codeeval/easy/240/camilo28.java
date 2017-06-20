package retos;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/**
 * Title: Mersenne Primes
 * url: https://www.codeeval.com/open_challenges/240/
 * @author camilo
 * 
 */
public class mersenne_prime {
	/**
	 * Equation: 2**n-1 where n is prime special but not is the unique condition
	 * @param num
	 * @return the list with the mersenne primes
	 */
	public static ArrayList<Integer> is_mersenne(int num){
		ArrayList<Integer> mersenne = new ArrayList<Integer>();
		int[] n = {2, 3, 5, 7, 13, 17, 19, 31, 61, 89};
		for (int i = 0; i < n.length; i++) {
			if(Math.pow(2, n[i])-1 <= num){
				mersenne.add((int) Math.pow(2, n[i])-1);
			}
		}
		return mersenne;
	}
/**
 * Main function
 * @param args; input to the testcase
 * @throws IOException
 */
	public static void main(String[] args)throws IOException {
		File file = new File("/home/camilo/test_25");
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
        	ArrayList<Integer> mersenne = new ArrayList<Integer>();
        	mersenne = is_mersenne(Integer.parseInt(line));
        	String out = "";	
        for (Integer num : mersenne) {
			out += num + ", ";
		}	
		System.out.println(out.substring(0, out.length()-2));
	}

 }
}
