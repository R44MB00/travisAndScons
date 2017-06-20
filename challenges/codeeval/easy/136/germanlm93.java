package fluid;
import java.io.*;
/**
 *
 * @author glopez
 */
public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = null;
        try {
            String line;
            br = new BufferedReader(new FileReader("/home/glopez/SGS.txt"));
            int C = 0; //Checkpoint
            int D = 0; //Door
            int A = -99; //Aux 
            while ((line = br.readLine()) != null) {
                StringBuilder myLine = new StringBuilder(line.trim());
                C = myLine.indexOf("C");
                D = myLine.indexOf("_");
                if(A == -99){
                    myLine.setCharAt(D, '|');
                    A = D;
                }else{
                    if(C > 0){
                        if (A == C) {
                            myLine.setCharAt(C, '|');
                        }else if(A-1 == C){
                            myLine.setCharAt(C, '/');
                        }else if(A+1 == C){
                            myLine.setCharAt(C, '\\');
                        }
                        A = C;
                    }else if(D > 0){
                        if (A == D) {
                            myLine.setCharAt(D, '|');
                        }else if(A-1 == D){
                            myLine.setCharAt(D, '/');
                        }else if(A+1 == D){
                            myLine.setCharAt(D, '\\');
                        }
                        A = D;
                    }
                }
                System.out.println(myLine.toString());
            }

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (br != null) br.close();
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
    }
}
