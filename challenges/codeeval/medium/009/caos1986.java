import java.io.*;
import java.util.*;

public class Main {
    public static void main (String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            line = line.trim();
			String[] l=line.split(" ");
			Stack s = new Stack();
			for(int i=0;i<l.length;i++){
				s.push(l[i]);
			}
			int f=0;
			while(!s.empty()){
				if(f==0){
					System.out.print(s.pop()+" ");
					f=1;
				}else{
					s.pop();
					f=0;
				}
				
			}
			System.out.print("\n");

        }
    }
}
