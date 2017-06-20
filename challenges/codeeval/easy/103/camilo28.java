package retos;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.*;
/**
 * Title: Lowest unique number
 * @author camilo
 * url: https://www.codeeval.com/open_challenges/103/
 * CodeEval:Easy
 */
public class unique_number {
	/**
	 * compute the win of the hand
	 * @param mylist: list the nums
	 * @return result: the pos the winner
	 */
	public static int unique(ArrayList<String>mylist){
		int result;
		int con = 0;
		int uni;
		ArrayList<Integer> hand = new ArrayList<Integer>();
		while (con <= mylist.size()-1) {
			uni = 0;	
			for (String num : mylist) {
				if(mylist.get(con).equals(num)){
					uni++;
					//System.out.println(uni + "uniq");
			}
			}
			//System.out.println(uni + "");
			if(uni == 1){
				hand.add(Integer.parseInt(mylist.get(con)));
			}	
			con ++;
	}
		if (hand.size() == 0){
			result = 0;
		}
		else {
			result = Collections.min(hand);
			for (int i = 0; i < mylist.size(); i++) {
				if(mylist.get(i).equals(result + ""))
					result = i;
			}
			result += 1;
		}
		
		return result;
	}
	
	public static void main(String[] args)throws IOException {
		File file = new File("/home/camilo/test_23");
		BufferedReader buffer = new BufferedReader(new FileReader(file));
		String line;
		while ((line = buffer.readLine()) != null) {
			ArrayList<String> list = new ArrayList<String>(Arrays.asList(line.split(" ")));
			//String word = line.trim();
			//System.out.println(Multiples_of_a_number.multiplies(list));
			System.out.println(unique(list));

		}
	}
}
