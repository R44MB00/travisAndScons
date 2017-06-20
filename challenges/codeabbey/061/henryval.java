import java.util.*;
public class prime_generator {
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		int max=200000;
		int ent1 = in.nextInt();
		int[] vec = new int[ent1];
		for(int m=0;m<ent1;m++){
			vec[m]=in.nextInt();
		}
		int[] primes = new int[max];
		int flag=0,pr=2,fp=0;
		while(flag<max){
			fp=0;
			for(int i=2;i<=pr;i++){
				if(pr%i==0) fp++;
				if(fp>1){
					break;
				}
			}
			if(fp==1){
				primes[flag]=pr;
				flag++;
			}
			pr++;
		}
		for(int n=0;n<ent1;n++){
			System.out.print(primes[vec[n]-1]);
			if(n!=(ent1-1)) System.out.print(" ");
		}
		//El programa se demora aproximadamente 30 minutos (mientras calcula todos los primos)
		in.close();
	}
}