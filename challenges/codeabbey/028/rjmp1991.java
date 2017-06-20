public class IMC {
    public static void main(String[] args) {
        double BMI;
        String cadena="";
        double [] pesos = {50,62,55,40,111,61,51,
		73,86,65,51,40,103,69,103,55,107,84,117,
		91,83,58,74,57,59,48,67,59};
        double [] alturas = {1.47,1.52,1.55,1.22,
		1.73,1.70,1.43,1.71,1.78,2.24,1.24,1.08,
		2.21,1.42,2.21,1.25,2.16,2.76,2.16,1.66,
		1.54,1.41,1.63,1.24,1.54,1.51,2.27,2.05};
        for (int i = 0; i < pesos.length; i++) {    
            BMI=pesos[i] / Math.pow(alturas[i], 2);
            if (BMI < 18.5) {
                cadena+=" under";
            }else if(18.5 <= BMI && BMI < 25.0){
                cadena+=" normal";
            }else if(25.0 <= BMI && BMI < 30.0){
                cadena+=" over";
            }else{
                cadena+=" obese";
            }
        }
        System.out.println(cadena.substring(1, cadena.length()));
    }
}