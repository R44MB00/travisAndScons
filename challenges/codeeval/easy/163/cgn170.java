/**
 * Created by carlos on 19/02/16.
 */

import java.io.*;

public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;

        char[][] big_d=new char[50][6];
        String[] d_s=new String[6];

        d_s[0]= "-**----*--***--***---*---****--**--****--**---**--";
        d_s[1]= "*--*--**-----*----*-*--*-*----*-------*-*--*-*--*-";
        d_s[2]= "*--*---*---**---**--****-***--***----*---**---***-";
        d_s[3]= "*--*---*--*-------*----*----*-*--*--*---*--*----*-";
        d_s[4]= "-**---***-****-***-----*-***---**---*----**---**--";
        d_s[5]= "--------------------------------------------------";

        for(int j=0;j<6;j++){
            for (int i=0;i<50;i++){
                big_d[i][j]=d_s[j].charAt(i);
            }
        }
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            line=line.replaceAll("\\D+","").replace("-","");
            int cont=0;
            for(int j=0;j<6;j++){
                for(int i=0;i<line.length();i++) {
                    cont=(Character.getNumericValue(line.charAt(i))*5);
                    if(cont==-1) cont=0;
                    for(int x=i*5;x<((i*5)+5);x++){
                        System.out.print(big_d[cont][j]);
                        cont++;
                    }
                }
                System.out.println();
            }
        }
    }
}
