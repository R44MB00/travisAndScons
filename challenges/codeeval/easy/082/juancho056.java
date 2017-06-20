import java.io.*;
import java.util.*;

public class ArmstrongNumber{
	public static void main String[] args) throws IOException {
		File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        Scanner in= new Scanner(file);
			while (in.hasNexline()){
				String num=in.nextLine();
				int sum=0;
				for(int i=0;i<num.length;i++){
					int digit=Integer.parseInt (num.charAt(i)+" ");
					double powered= Math.pow(digit,num.length());
					sum +=powered;
				}
				if(sum ==Integer.parseInt(num)){
				System.out.println("True");
				}
				else{
				System.out.println("False");
				}
				
			}
	}


}
