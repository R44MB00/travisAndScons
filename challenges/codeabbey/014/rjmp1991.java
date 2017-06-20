
import java.math.BigInteger;
import javax.script.ScriptEngineManager;
import javax.script.ScriptEngine;
import javax.script.ScriptException;
public class Modulo {
    public static void main(String[] args) throws ScriptException{
        String [] cadena={
                "994",
                "+ 14",
                "* 5",
                "* 2",
                "+ 5754",
                "* 7",
                "* 70",
                "* 253",
                "+ 2",
                "* 7",
                "+ 9529",
                "+ 4423",
                "* 445",
                "* 6373",
                "* 5",
                "+ 6430",
                "* 1",
                "+ 58",
                "+ 752",
                "+ 97",
                "* 82",
                "+ 7",
                "* 4",
                "* 141",
                "* 2364",
                "* 10",
                "* 143",
                "+ 6",
                "* 2418",
                "* 582",
                "* 99",
                "+ 202",
                "* 362",
                "* 9",
                "+ 9",
                "+ 88",
                "+ 617",
                "* 785",
                "* 63",
                "* 350",
                "+ 7",
                "* 35",
                "+ 1",
                "* 6",
                "* 106",
                "* 6",
                "+ 114",
                "+ 75",
                "* 5",
                "+ 7642",
                "* 8756",
                "* 1869",
                "% 3645"
        };
        ScriptEngineManager mgr = new ScriptEngineManager();
		ScriptEngine engine = mgr.getEngineByName("JavaScript"); 
        BigInteger r; 
        r = new BigInteger(cadena[0]);
        
        String aux;
        
for (int i = 1; i < cadena.length; i++) {
	aux=cadena[i];
	if("+ ".equals(aux.substring(0, 2))){             
	r=suma(r,new BigInteger(aux.substring(2, aux.length())));
	}else if("* ".equals(aux.substring(0, 2))){           
	r=multiplicacion(r,new BigInteger(aux.substring(2, aux.length())));
	}else{
	r=modulo(r,new BigInteger(aux.substring(2, aux.length())));
	}
	
}
  
System.out.println(r);    
}
    
public static BigInteger suma(BigInteger a,BigInteger b){
   
    return a.add(b);
}

public static BigInteger multiplicacion(BigInteger a,BigInteger b){
   
    return a.multiply(b);
}
public static BigInteger modulo(BigInteger a,BigInteger b){
   
    return a.mod(b);
}

}