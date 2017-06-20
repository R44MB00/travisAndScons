import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
public class Main {
	public static void main(String[] args) throws IOException {
		File filename = new File(args[0]);  
		BufferedReader reader = new BufferedReader(new FileReader(filename));
		String line;
		String[] nums;
		while ((line = reader.readLine()) != null){
			nums = line.split(",");
			int maxS = -999999999;
			for (int i = 1; i <= nums.length; i++){
				int partialMax = maxSum(nums,i);
				if (partialMax > maxS) maxS = partialMax;
			}
			System.out.println(maxS);
		}
	}
	private static int maxSum(String[] nums, int iterator) {
		int index = 0;
		int max = -999999999;
		while (index + iterator <= nums.length){
			int sum = 0;	
			for (int i = index; i < iterator + index; i++){
				sum += Integer.parseInt(nums[i]);
			}
			if (sum > max) max = sum;
			index ++;
		}
		return max;
	}
}