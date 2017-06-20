import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
public class Main {
	static ArrayList<Integer> arrayOfPrimes = new ArrayList<Integer>();
	public static void main(String[] args) throws IOException {
		File filename = new File(args[0]);  
		BufferedReader reader = new BufferedReader(new FileReader(filename));
		String line;
		int maxInt=2;
		int minInt=2;
		arrayOfPrimes.add(2);
		while ((line = reader.readLine()) != null){
			int count = 0;
			if (line.length()>0){
				String[] interval = line.split(",");
				if (Integer.parseInt(interval[1]) > maxInt){
					minInt = maxInt;
					maxInt = Integer.parseInt(interval[1]);
					for (int i = minInt; i <= maxInt;i++){
						if (isPrime(i)){
							if (!arrayOfPrimes.contains(i))	arrayOfPrimes.add(i); 
						}    
					}
				}	
				for (Integer prime : arrayOfPrimes){
					if (prime >= Integer.parseInt(interval[0]) && 
					    prime <= Integer.parseInt(interval[1])	) count++; 
				}
				System.out.println(count);
			}
		}
		reader.close();
	}
	private static boolean isPrime (int num){
		for (Integer prime : arrayOfPrimes){
			if (num % prime == 0) return false;
		}return true;
	}

}

