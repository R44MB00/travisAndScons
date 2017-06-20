import java.io.*;
import java.util.ArrayList;
public class Main {
	public static void main(String[] args) throws IOException {
	File filename = new File(args[0]);  
	BufferedReader reader = new BufferedReader(new FileReader(filename));
	String line;
	while ((line = reader.readLine()) != null){
		ArrayList<Integer> cardNum= new ArrayList<Integer>();
		for (int j = 0 ; j < line.length(); j++){
			Character ch = line.charAt(j);
			if (Character.isDigit(ch)) cardNum.add(Character.getNumericValue(ch));
		}
		int sum = 0;
		for (int k = 0; k < cardNum.size() ;k++){
			int fromLeftNum = cardNum.get(cardNum.size()-k-1);
			if (!isEven(k)){
				fromLeftNum = fromLeftNum*2;
				if (fromLeftNum >=10){
					fromLeftNum  = addTwoDigits(fromLeftNum);
				}
			}
		sum += fromLeftNum;
		}
	if (sum%10 ==0) System.out.println(1);
	else System.out.println(0);
	cardNum.clear();
	}
reader.close();
}
static boolean isEven(int n){
	if (n%2 ==0 ) return true;
	else return false;
}
static int addTwoDigits(int n){
	int sum = 0;
	String digits = Integer.toString(n);
		for (int k=0 ; k<digits.length();k++){
			Character ch = digits.charAt(k);
			sum+= Character.getNumericValue(ch);
		}
   	 return  sum;
}
}
