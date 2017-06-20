public class SquareRoot {

    public static void main(String[] args) {
        
        int [][]datos = {
            {61,5},
            {758,5},
            {10570,9},
            {18,12},
            {35,12},
            {77,6},
            {718,13},
            {42052,8},
            {91173,6},
            {63620,12}
        };
        
        float r=1;
        int a,b;
        String cadena="";
        
        for (int i = 0; i < datos.length; i++) {
            a=datos[i][0];
            b=datos[i][1];
            for (int j = 0; j < b; j++) {
                r = (r + (a/r))/2;
            }
            cadena+=r +" ";
        }
        System.out.println(cadena.substring(0,cadena.length()-1));
    }
}