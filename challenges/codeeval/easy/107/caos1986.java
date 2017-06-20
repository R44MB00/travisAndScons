import java.io.*;

public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
			for(int j=1;j<=line.length();j++){
				if(line.length()%j==0){
					String tmp=line.substring(0,j);
					int ec=0;
					for(int i=0;i<line.length()/j;i++){
						String tmp2=line.substring(i*j,(i*j)+j);
						if(!tmp.equals(tmp2)){
							break;
						}else
							ec++;
					}
					if(ec==line.length()/j){
						System.out.println(j);
						break;
					}
				}
			}

        }
    }
}
