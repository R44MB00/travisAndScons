import java.util.*;
public class henryval{
	    public static void main(String[] args) {
	        Scanner in = new Scanner(System.in);
	        int len=in.nextInt();
	        int[] v = new int[len];
	        for(int i=0;i<len;i++){
	            v[i]=in.nextInt();
	        }
	        double f,ff=(double)5/9,f1;
	        for(int i=0;i<len;i++){
	            f=(double)(v[i]-32)*ff;
	            System.out.print(Math.round(f)+" ");
	        }
	        in.close();
	    }
	}