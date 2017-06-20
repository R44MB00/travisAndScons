/**
 * 
 */
package ibs;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Arrays;

/**
 * @author waldyd
 *
 */
public class Main {

	/**
	 * @param args
	 */
	public static void main (String[] args) throws IOException {
		// TODO Auto-generated method stub
        File inputFile = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(inputFile));
        String inputFileLine;
        while ((inputFileLine = buffer.readLine()) != null) {
        	String [] inputArguments = inputFileLine.trim().split(" \\| ");
        	//System.out.println(inputFileLine);
        	//System.out.println(inputArguments[1].trim());
        	String [] inputValues = inputArguments[0].split(" ");
        	long iterations = Long.parseLong(inputArguments[1].trim());
        	//System.out.println(inputValues[1]);
        	        	        	
        	String temp;
            for(int i=0; i < inputValues.length-1; i++){
            	for(int j=1; j < inputValues.length-i; j++){
                    if(Long.parseLong(inputValues[j-1]) > Long.parseLong(inputValues[j])){
                        temp = inputValues[j-1];
                        inputValues[j-1] = inputValues[j];
                        inputValues[j] = temp;
                    }
            	}
                //System.out.println((i+1)+"th iteration result: " + Arrays.toString(inputValues));
                if (i+1 == iterations) break;
            }
            
            System.out.println(String.join(" ", Arrays.asList(inputValues)));
            
        }
    }

}
