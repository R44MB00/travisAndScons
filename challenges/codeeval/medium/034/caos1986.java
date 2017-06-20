import java.io.*;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
			String[] p=line.split(";");
			int sum=Integer.parseInt(p[1]);
			String[] l=p[0].split(",");
			String out="";
			for(int i=0;i<l.length-1;i++){
				for(int j=i;j<l.length;j++){
					if(Integer.parseInt(l[i])+Integer.parseInt(l[j])==sum)
						out=out+""+l[i]+","+l[j]+";";
				}
			}
			if(out.equals("")){
				System.out.println("NULL");
			}else{
				
				System.out.println(out.substring(0,out.length()-1));
			}
        }
    }
}
