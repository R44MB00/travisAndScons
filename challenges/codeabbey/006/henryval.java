import java.util.*;
public class henryval{
	    public static void main(String[] args) {
	        Scanner in = new Scanner(System.in);
	        int len=in.nextInt();
	        int[][] v = new int[len][2];
	        for(int i=0;i<len;i++){
	            v[i][0]=in.nextInt();
	            v[i][1]=in.nextInt();
	        }
	        float f;
	        for(int i=0;i<len;i++){
	            f=(float)v[i][0]/v[i][1];
	            System.out.print(Math.round(f)+" ");
	        }
	        in.close();
	    }
	}