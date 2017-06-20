
public class PrimePalindrome {

    public static void main(String[] args) {
        // Prints "Hello, World" to the terminal window.
        int result=0;
        StringBuffer sb=new StringBuffer(""); // declarar la variable para que este en todo el codigo
        for (int i = 10; i <= 1000; i++) {
        	//String c;
            sb=new StringBuffer(""); // reinicio la variable a valor 0
        	String number = String.valueOf(i);//  integer to string
        	String [] items = number.split(""); // split cada caracter
        	int longitud=items.length; // longitud del string
        	//System.out.println(longitud);
            for (int  j=longitud; j>0 ; j--) {
        		sb.append(items[j-1]); // adiciono al string
            }  
            String change = sb.toString();
            int foo = Integer.parseInt(change);
        	
            if(i==foo){
                boolean verify = isPrime(foo);
                if(verify==true){
                    result=foo;
                }
            }
   	
        }
        System.out.println(result);
    }


 private static boolean isPrime(int num) {
        if (num % 2 == 0)
            return false;
        for (int i = 3; i * i <= num; i += 2)
            if (num % i == 0) return false;
        return true;
  }  
}
