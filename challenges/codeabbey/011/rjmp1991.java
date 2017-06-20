public class SumaDigitos {
    public static void main(String[] args) {
        int a[]={131,336,96,271,150,73,317,
		222,382,180,115,234,49,390};
        int b[]={252,15,206,290,136,208,
		179,289,251,60,153,104,171,73};
        int c[]={61,105,175,147,9,4,158,
		145,100,63,31,41,177,171};
        String cadena="",aux;
        int operacion = 0,suma=0;
        for (int i = 0; i < a.length; i++) {
            operacion = a[i]*b[i]+c[i];
            aux=operacion+"";
            for (int j = 0; j < aux.length(); j++) {
                suma+=Integer.parseInt(aux.charAt(j)+"");
            }
            cadena+=suma+" ";
            suma=0;
        }
        System.out.println(cadena.substring(0, cadena.length()-1));  
    }
}