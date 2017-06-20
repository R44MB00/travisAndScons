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
			String[] parts = line.split(":");
			String[] nums = parts[0].toString().split("\\s+");
			String[] interval = parts[1].toString().split(",");
			for (int i=0; i<interval.length;i++){
				 String[] pos = interval[i].toString().trim().split("-");
				 String char0 = nums[Integer.parseInt(pos[0])];
				 String char1 = nums[Integer.parseInt(pos[1])];
				 nums[Integer.parseInt(pos[0])] = char1;
				 nums[Integer.parseInt(pos[1])] = char0;
			}
			System.out.println(String.join(" ", nums));
		}
		reader.close();
	}
}