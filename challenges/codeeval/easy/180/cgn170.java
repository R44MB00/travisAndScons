/**
 * Created by carlos on 7/03/16.
 */

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        List<String> answer=new ArrayList<>();
        int[][] board=new int[8][8];
        int c=0;
        int n=0;
        String temp="";
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            c=(int)line.charAt(0)-97;
            n=8-Character.getNumericValue(line.charAt(1));
            if((c-2)>=0 & (n+1)<=7){
                temp=String.valueOf((char)((c-2)+97))+String.valueOf(8-1-n);
                answer.add(temp);

            }
            if((c-2)>=0 & (n-1)>=0){
                temp=String.valueOf((char)((c-2)+97))+String.valueOf(8+1-n);
                answer.add(temp);
            }
            if((c-1)>=0 & (n+2)<=7){
                temp=String.valueOf((char)((c-1)+97))+String.valueOf(8-2-n);
                answer.add(temp);
            }
            if((c-1)>=0 & (n-2)>=0){
                temp=String.valueOf((char)((c-1)+97))+String.valueOf(8+2-n);
                answer.add(temp);
            }
            if((c+1)<=7 & (n+2)<=7){
                temp=String.valueOf((char)((c+1)+97))+String.valueOf(8-2-n);
                answer.add(temp);
            }
            if((c+1)<=7 & (n-2)>=0){
                temp=String.valueOf((char)((c+1)+97))+String.valueOf(8+2-n);
                answer.add(temp);
            }
            if((c+2)<=7 & (n+1)<=7){
                temp=String.valueOf((char)((c+2)+97))+String.valueOf(8-1-n);
                answer.add(temp);
            }
            if((c+2)<=7 & (n-1)>=0){
                temp=String.valueOf((char)((c+2)+97))+String.valueOf(8+1-n);
                answer.add(temp);
            }
            System.out.println(answer.toString().replace("[","").replace("]","").replace(" ","").replace(","," "));
            answer.clear();
        }
    }
}
