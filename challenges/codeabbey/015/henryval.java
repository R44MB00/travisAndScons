import java.util.*;
public class henryval{
	public static void main(String[] args) {
		Scanner in1 = new Scanner(System.in);
	        char[] numbers = in1.nextLine().toCharArray();
	        int[] nums = new int[300];
	        int indice=0;
	        String num_save="";
	        for(int i=0;i<numbers.length;i++){
	            if(numbers[i]!=' '){
	                num_save=num_save+numbers[i];
	            }else{
	                nums[indice]=Integer.parseInt(num_save);
	                indice++;
	                num_save="";
	            }
	        }
	        int min,max,MIN=0,MAX=0;
	        for(int i=0;i<nums.length;i++){
	            min=0; max=0;
	            for(int j=0;j<nums.length;j++){
	                if(nums[i]<nums[j]) min++;
	                if(nums[i]>nums[j]) max++;
	            }
	            if(min==0) MIN=nums[i];
	            if(max==0) MAX=nums[i];
	        }
	        in1.close();
	        System.out.println(MIN+" "+MAX);
	    }
	}