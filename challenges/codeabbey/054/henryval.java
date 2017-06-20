import java.util.*;
import java.math.*;
public class henryval{
	    public static void main(String[] args) {
	        Scanner in = new Scanner(System.in);
	        int ent = in.nextInt();
	        int[] a = new int[ent];
	        int[] b = new int[ent];
	        int[] c = new int[ent];
	        int[] MyInputs = new int[ent];
	        for(int i=0;i<ent;i++){
	            MyInputs[i]=in.nextInt();
	        }
	        int pf=10000; //punto final
	        for(int z=0;z<ent;z++){
	            for(int m=0;m<pf;m++){
	                for(int n=0;n<m;n++){
	                    if((2*m*(m+n))==MyInputs[z]){
	                        a[z]=2*m*n;
	                        b[z]=m*m-n*n;
	                        c[z]=m*m+n*n;
	                    }
	                }
	            }
	        }
	        in.close();
	        for(int i=0;i<ent;i++){
	            BigInteger num = BigInteger.valueOf(c[i]);
	            num=num.pow(2);
	            System.out.print(num+" ");
	        }
	    }
	}