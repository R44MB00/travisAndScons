import java.util.*;
public class henryval {
	public static void main(String[] args) {
		Scanner in1 = new Scanner(System.in);
		char[] num = in1.next().toCharArray();
		int gus = in1.nextInt();
		int flagx=0, flagy=0;
		String ss2 = in1.nextLine(); //useless
		String[] ss = in1.nextLine().split(" ");
		for(int i=0;i<ss.length;i++){
			flagx=0; flagy=0;
			char[] sschar = ss[i].toCharArray();
			for(int j=0;j<sschar.length;j++){
				for(int k=0;k<num.length;k++){
					if(sschar[j]==num[k]){
						if(j==k){
							flagx++;
						}else{
							flagy++;
						}
					}
				}
			}
			System.out.print(flagx+"-"+flagy);
			if(i!=(ss.length-1)){
				System.out.print(" ");
			}
		}
		in1.close();
	}
}