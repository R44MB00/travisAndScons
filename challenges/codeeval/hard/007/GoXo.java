import java.io.*;
import java.util.ArrayList;

public class Main {
	
	public static void main(String[] args) throws IOException {
	
	File filename = new File(args[0]);  
	BufferedReader reader = new BufferedReader(new FileReader(filename));
	String line;

	
	while ((line = reader.readLine()) != null){
		if (line.length()!=0){
			
			ArrayList<String> symbols = new ArrayList<String>();
			ArrayList<Double> nums = new ArrayList<Double>();
			String[] parts = line.trim().split(" ");
			
			for (int i = 0; i < parts.length; i++){
				
				if (isNumeric(parts[i])) nums.add(Double.parseDouble(parts[i]));
				else symbols.add(parts[i]);
					 	
				}
			
			double res;
			String sym = symbols.get(0);
			
			if (nums.size() == 0){
				continue;
				} 
			else res = nums.get(0);
								
			for (int k = 0; k < nums.size() -1; k++){
				
				if (symbols.size()-k-1 >= 0) sym = symbols.get(symbols.size()-k-1);
							
				double num1 = nums.get(k);
				double num2 = nums.get(k+1);
				
				if (sym.equals("+")) res = num1 + num2;
							
				else if (sym.equals("*"))	res = num1 * num2;
					
				else if (sym.equals("/")) res = num1 / num2;
				
				else res = 0;
					
				nums.set(k+1, res);
				}
			
			System.out.println((int)res);
			}
		}	
  	reader.close();
	}
	
static private boolean isNumeric(String s) {  
    return s.matches("[-+]?\\d*\\.?\\d+");
	}
}