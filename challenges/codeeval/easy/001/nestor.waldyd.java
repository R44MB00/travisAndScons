/**
 * 
 */
package fizzbuzz;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

/**
 * @author waldyd
 *
 */
public class FizzBuzz {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		try {
            BufferedReader in = new BufferedReader(new FileReader(args[0]));
            String str;
            	while ((str = in.readLine()) != null) {
            		String[] inValues=str.split(" ");
            		int fizz = Integer.parseInt(inValues[0]);
                    int buzz = Integer.parseInt(inValues[1]);
                    int limit = Integer.parseInt(inValues[2]);
            	
	            	StringBuilder outValues = new StringBuilder();
	
	                for (int i = 1; i <= limit; i++) {
	                    if (i % fizz == 0) { outValues.append("F"); }
	                    if (i % buzz == 0) { outValues.append("B"); }
	                    if (i % fizz != 0 && i % buzz != 0) { outValues.append(i); }
	                    if (i < limit) { outValues.append(" "); }
	                }
	                System.out.println(outValues.toString());
                }
                
            in.close();
        } catch (IOException e) {
            System.out.println("File Read Error");
        }

	}

}
