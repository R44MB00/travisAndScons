import java.io.*;
import java.util.List;
import java.util.ArrayList;
public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
			String[] l = line.split(",");
			int n1=Integer.parseInt(l[0]);
			int n2=Integer.parseInt(l[1]);
			List<Integer> lista = new ArrayList<Integer>();
			for(int i=0;i<n1;i++){
				lista.add(i);
			}
			int con=0;
			int pos=-1;
			int lpos=-1;		
			while(lista.size()>0){	
				if(pos>=lista.size())
					pos=0;					
				if(con==n2){
					System.out.print(lista.get(pos)+" ");
					lista.remove(pos);
					con=0;
					pos=lpos;
				}
				lpos=pos;
				pos++;				
				con++;
			}
			System.out.println();
        }
    }
}
