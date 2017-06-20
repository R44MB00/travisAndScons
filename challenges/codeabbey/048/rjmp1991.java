public class Collatz {
    public static void main(String[] args) {
        int cont=0,x;
        int [] valores ={42,127,3356,31,335,7582,
		24,178,38,34,28749,93,12455,30,22320,48,
		246,50,19,2378,23863,621,4656};
        String cadena="";
        for (int i = 0; i < valores.length; i++) {
            x=valores[i];
            while(x!=1){
                if (x%2==0) {
                    x=x/2;
                }else{
                    x= 3 * x + 1;
                }
                cont++;
            }
            cadena+=cont+" ";
            cont=0;
        }
        System.out.println(cadena.substring(0, cadena.length()-1));
    }
}