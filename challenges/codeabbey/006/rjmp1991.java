public class Redondeo {
    public static void main(String[] args) {
        String cadena="";
        double a[]= {-1074069,3592510,-5143706,-232495,
		18875,4463808,10017,3113792,11001,89188,6881030};
        double b[]= {2370677,356,3377743,-4708845,1684,
		808415,1166,102,562,3109125,-2427909};
        for (int i = 0; i < 11; i++) {
            cadena+=Math.round((a[i]/b[i]))+" ";
        }
        System.out.println(cadena.substring(0, cadena.length()));
    }
}