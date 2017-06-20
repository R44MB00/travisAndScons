import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            System.out.println(isBalanced(line));
        }
    }
    
    public static String isBalanced(String m){
        int minO=0;
        int maxO=0;
        for(int i =0; i<m.length();i++){
            if(m.charAt(i)=='('){
                maxO++;
                if(i==0 || m.charAt(i-1)!=':')
                    minO++;
            }else if(m.charAt(i)==')'){
                minO=Math.max(0,minO-1);
                if(i==0 || m.charAt(i-1)!=':'){
                    maxO--;
                    if(maxO<0)
                        break;
                    
                }
            }
        }
        if(maxO>=0 && minO==0)
            return "YES";
        else
            return "NO";
    }
}
