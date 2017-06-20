import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] l=line.split(";");
            System.out.println(lcs(l[0],l[1]));
        }
    }
    
    public static String lcs(String a, String b){
        int[][] l = new int[a.length()+1][b.length()+1];
        for(int i =0;i<a.length();i++){
            for(int j =0;j<b.length();j++){
                if(a.charAt(i)==b.charAt(j)){
                    l[i+1][j+1]=l[i][j]+1;
                }else{
                    l[i+1][j+1]=Math.max(l[i+1][j],l[i][j+1]);
                }
            }
        }
        String out="";
        int x=a.length();
        int y=b.length();
        while(x!=0 && y!=0){
            if(l[x][y]==l[x-1][y]){
                x--;
            }else if(l[x][y]==l[x][y-1]){
                y--;
            }else{
                out=a.charAt(x-1)+out;
                x--;
                y--;
            }
        }
        return out;
    }
}
