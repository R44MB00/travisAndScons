import java.util.*;
import java.lang.*;
import java.io.*;

class Main
{
	public static void main (String[] args) throws IOException
	{
		File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
			line = line.trim();    
			String test=line;
			test=test.replace(" ","");
			char[] test_array=test.toCharArray();
			int add=0;
			int num=0;
			int ban=1;
			for (int i=(test_array.length-1);i>=0;i--){
				num= Character.getNumericValue(test_array[i]);
				if (ban!=1) {
					num*=2;
					ban=1;
				}
				else
					ban=0;
				if(num>9){
					char[] stemp=(String.valueOf(num).toCharArray());
					num=0;
					for (int j=0;j<stemp.length;j++){
						num+= Character.getNumericValue(stemp[j]);
					}
				}
			   add+=num;
			}
			if ((add % 10)==0) System.out.println(1);
			else System.out.println(0);
		}
	}
}
