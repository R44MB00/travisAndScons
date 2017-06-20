import java.io.*;
public class Main {
	public static void main(String[] args) throws IOException {
	File filename = new File(args[0]);  
	BufferedReader reader = new BufferedReader(new FileReader(filename));
	String line;
	while ((line = reader.readLine()) != null){
		String[] nums =line.split(" ");
		boolean sequence = false;
		for (int i=0; i<nums.length-1;i++){
			for (int j=i+1 ; j<nums.length-1;j++ ){
				if (nums[i].equals(nums[j])){
					if(nums[i+1].equals(nums[j+1])){
						sequence = true;
						System.out.print(nums[i]);
						for (int k=1;k<nums.length;k++){
							if (j+k>=nums.length) break;
							if ((nums[i].equals(nums[i+k]))
									||(nums[j].equals(nums[j+k]))){
							break;	
							}
							else if (nums[i+k].equals(nums[j+k])) {
							System.out.print(" "+nums[i+k]);
							}
							else break;
						}
					}
				}
			if (sequence) break;
			}
		if (sequence) break;			
		}
	System.out.println();
	}
	reader.close();
	}
}

