import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
            String[] l = line.split(" ");
            int u = Integer.valueOf(l[0]);
            int lo=0;
            int g=0;
            int a=1;
            while(a<l.length){
                g=(lo+u+1)/2;
                if(l[a].charAt(0)=='L'){
                    u=g-1;
                }else if(l[a].charAt(0)=='H'){
                    lo=g+1;
                }else{
                    break;
                }
                a++;
            }
            System.out.println(g);
        }
    }
}
