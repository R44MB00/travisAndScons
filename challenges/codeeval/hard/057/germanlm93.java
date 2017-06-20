package fluid;

import java.util.Stack;

/**
 *
 * @author glopez
 */
public class Main {
    
    public static void main(String[] args) {
        String line = "3;3;1 2 3 4 5 6 7 8 9";
        logic(line);
    }
    
    public static void logic(String line){
        int n = Integer.valueOf(line.split(";")[0]);
        int m = Integer.valueOf(line.split(";")[1]);
        String[][] mat = new String[n][m];
        String[][] nek = new String[n][m];
        String[] elems = line.split(";")[2].split(" ");
        int c = 0;
        for (int i = 0; i < m; i++) {
            for (int j = 0; j < m; j++) {
                mat[i][j] = elems[c];
                c++;
            }
        }
        spiral(mat);
    }
    
    public static void print(String[][] mat){
        for (int i = 0; i < mat.length; i++) {
            for (int j = 0; j < mat[i].length; j++) {
                System.out.print(mat[i][j]+" ");
            }
            System.out.println("");
        }
    }

    public static void spiral(String[][] mat){
        int i, k = 0, l = 0;
        int n = mat.length;
        int m = mat[0].length;
        /*  k - starting row index
            m - ending row index
            l - starting column index
            n - ending column index
            i - iterator
        */
        String ans = "";
        while (k < m && l < n){
            for (i = l; i < n; ++i){ ans += mat[k][i]+" "; } k++;
            for (i = k; i < m; ++i){ ans += mat[i][n-1]+" "; } n--;
            if ( k < m){
                for (i = n-1; i >= l; --i){ ans += mat[m-1][i]+" "; } m--;
            }
            if (l < n){
                for (i = m-1; i >= k; --i){ ans += mat[i][l]+" "; } l++;    
            }        
        }
        System.out.println(ans.substring(0,ans.length()-1));
    }
    
}
