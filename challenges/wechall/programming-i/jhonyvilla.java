package programing;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

public class Programing 
{
    public static void main(String[] args) 
    {
        try
        {
		 URL pag = new URL ("http://www.wechall.net/challenge/training/programming1/index.php?action=request");
            URLConnection cn = pag.openConnection();
            String cookie = "***********************";
            cn.setRequestProperty("Cookie", cookie);
            cn.connect();
            String info = "";
            BufferedReader read = new BufferedReader(new InputStreamReader(cn.getInputStream()));
            String aux;
            while ((aux = read.readLine())!= null)
            {
                info = info + aux;
            }
            URL res = new URL ("http://www.wechall.net/challenge/training/programming1/index.php?answer="+info);
            URLConnection cn1 = res.openConnection();
            cn1.setRequestProperty("Cookie", cookie);
            cn1.connect();
   	   }
        catch (Exception e){}
    }  
}