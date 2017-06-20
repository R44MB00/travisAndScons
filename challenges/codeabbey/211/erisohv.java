import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.RoundingMode;

/**
 * Information Entropy
 * @author erisohv
 */
public class erisohv {
	
	/**
	 * Calculate the information entropy 
	 * @param occurrences
	 * @param length
	 * @return
	 */
	private static BigDecimal getEntropy(double occurrences, double length){
		double frecuency = occurrences / length;
		BigDecimal log = new BigDecimal(Math.log(frecuency)/Math.log(2.0)).negate();
		return (new BigDecimal(frecuency).multiply(log)).setScale(15, RoundingMode.HALF_EVEN);
	}
	

	/**
	 * Process the input
	 * @throws NumberFormatException
	 * @throws IOException
	 */
	private static void processInput() throws NumberFormatException, IOException{
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		int qty = Integer.parseInt(reader.readLine());
		for (int i = 0; i < qty ; i++){
			String word = reader.readLine();
			BigDecimal entropy = BigDecimal.ZERO;
			
			for (int j = 0; j< word.length(); j++){
				double occ = 1; // occurrences
				if (word.charAt(j) != '*'){	
					for (int k = j + 1; k < word.length(); k++){
						if (word.charAt(k) != '*' && word.charAt(j)==word.charAt(k)){
							occ++;
						}	
					}
					word = word.replace(word.charAt(j), '*');
					entropy = entropy.add(getEntropy(occ, word.length()));
				}
			}
			
			System.out.print(entropy + " ");
		}
		reader.close();
	}
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		processInput();
	}
}
