import java.util.*;
public class henryval {
	public static void main(String[] args) {
		Scanner in1 = new Scanner(System.in);
		int n = in1.nextInt();
		double[] vec = new double[n];
		String ss;
		for(int i=0;i<n;i++){
			ss = in1.next().replace(",",".");
			vec[i]= new Double(ss);
		}
		for(int i=0;i<n;i++){
			if(i==0){
				System.out.print(vec[i]+" ");
			}else if(i==(n-1)){
				System.out.print(vec[i]);
			}else{
				System.out.print(((vec[i]+vec[i-1]+vec[i+1])/(3))+" ");
			}
		}
		in1.close();
	}
}