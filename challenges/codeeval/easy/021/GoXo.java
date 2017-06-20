import java.io.*;
public class Main{
	public static void main(String[] args) throws IOException {
		File filename = new File(args[0]);  
		BufferedReader reader = new BufferedReader(new FileReader(filename));
		String line;
		while ((line = reader.readLine()) != null){	
			int sum=0;
			for (int j = 0 ; j < line.length(); j++){
				Character ch = line.charAt(j);
			  	if (Character.isDigit(ch))sum += Character.getNumericValue(ch);
   	    		}
			System.out.println(sum);
		}
		reader.close();
	}
}
