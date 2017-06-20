import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
public class Main {
	public static void main(String[] args) throws IOException {
		File filename = new File(args[0]);  
		BufferedReader reader = new BufferedReader(new FileReader(filename));
		String line;
		while ((line = reader.readLine()) != null){
			if (line.length()>0){
				int decNum= Integer.parseInt(line);
				System.out.println(decToBin(decNum));
			}
		}
		reader.close();
	}
	private static String decToBin (int num){
		String binary = "";
		if (num == 0) return "0";
		else{
			while(num!=0){
				if (num%2 ==0) binary+="0";
				else binary += "1";
				num = num/2;
			}
		}
		return new StringBuilder(binary).reverse().toString();
	}
}