import java.util.*;
public class henryval{
	    public static void main(String[] args) {
	        Scanner in = new Scanner(System.in);
	        int ent=in.nextInt();
	        String[] MyS = new String[ent+1];
	        for(int i=0;i<(ent+1);i++){
	            MyS[i]=in.nextLine();
	        }
	        char[] MyC, vowels = {'a','e','i','o','u','y'};
	        int flag;
	        for(int i=1;i<(ent+1);i++){
	            MyC=MyS[i].toCharArray(); flag=0;
	            for(int j=0;j<(MyC.length);j++){
	                for(int k=0;k<6;k++){
	                    if(MyC[j]==vowels[k]) flag++;
	                }
	            }
	            System.out.print(flag);
	            if(i!=(ent)) System.out.print(" ");
	        }
	        in.close();
	    }
	}