import java.io.*;
public class Main {
    public static void main (String[] args) {
        try{
            
        File file = new File(args[0]);
        BufferedReader buffer = new BufferedReader(new FileReader(file));
        String line;
        while ((line = buffer.readLine()) != null) {
            if(!line.equals("")){
                System.out.println(line.toLowerCase());
            }
            
stringReader = fileReader.ReadLine()
MsgBox("The first line of the file is " & stringReader)
        }
    } catch(Exception e){
        
    }
}

}
