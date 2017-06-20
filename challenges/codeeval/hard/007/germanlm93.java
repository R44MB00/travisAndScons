package fluid;

import java.util.Stack;

/**
 *
 * @author glopez
 */
public class Main {
    
    public static String perm = "";
    
    public static void main(String[] args) {
        String line = "* + 2 3 4";
        if(line.length() != 0){
            Stack x = new Stack();
            String[] vect = line.split(" ");
            for (int i = vect.length-1; i >= 0; i--) {
                if (vect[i].matches("^[0-9]+$")) {
                    x.push(Double.parseDouble(vect[i]));
                }else{
                    double n1 = (double)x.pop();
                    double n2 = (double)x.pop();
                    double result = 0;
                    switch(vect[i]){
                        case "+":
                            result = n1 + n2;
                            break;
                        case "-":
                            result = n1 - n2;
                            break;
                        case "*":
                            result = n1 * n2;
                            break;
                        case "/":
                            try{
                                result = n1 / n2;
                            }catch(Exception e){
                                
                            }finally{
                                result = 0;
                            }
                            break;
                        default:   
                    }
                    x.push(result);
                }
            }
            System.out.println(((Double)x.pop()).intValue());
        }
        

    }

    private static void permutacionBinaria(String[] elem, String act, int n, int r) {

    }
    
}
