package fluid;
/**
 *
 * @author glopez
 */
public class Main {
    
    public static String perm = "";
    
    public static void main(String[] args) {
        String line = "abc";
        String[] elementos = new String[line.length()];
        for (int i = 0; i < elementos.length; i++) {
            elementos[i] = String.valueOf(line.charAt(i));
        }
        int n = elementos.length;                  
        int r = elementos.length;   
        permutacionBinaria(elementos, "", n, r);
        System.out.println(perm.substring(0,perm.length()-1));
        perm = "";
    }
}
