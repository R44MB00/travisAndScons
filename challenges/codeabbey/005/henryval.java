import java.util.*;
public class henryval{
	    public static void main(String[] args) {
	        Scanner in = new Scanner(System.in);
	        int len=in.nextInt();
	        int[][] v = new int[len][3];
	        for(int i=0;i<len;i++){
	            v[i][0]=in.nextInt();
	            v[i][1]=in.nextInt();
	            v[i][2]=in.nextInt();
	        }
	        int min;
	        for(int i=0;i<len;i++){
	            for(int j=0;j<3;j++){
	                min=0;
	                for(int k=0;k<3;k++){
	                    if(v[i][j]>v[i][k]) min++;
	                }
	                if(min==0){
	                    System.out.print(v[i][j]);
	                    if(i!=(len-1)) System.out.print(" ");
	                }
	            }
	        }
	        in.close();
	    }
	}