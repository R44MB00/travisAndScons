public class FahreheitACelsius {
    public static void main(String[] args) {
        String cadena="";
        double a[]= {590,261,456,315,321,564,542,178,59,
		431,224,301,260,269,490,366,475,506,205,298,57,
		475,437,482,216,365,247,446,86,180,117,75,410,542};
        for (int i = 0; i < a.length; i++) {
            cadena+=Math.round((a[i]-32)/1.8)+" ";
        }
        System.out.println(cadena.substring(0, cadena.length()));
    }
}