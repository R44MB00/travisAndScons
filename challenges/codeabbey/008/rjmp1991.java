public class SumaPrograsion {
    public static void main(String[] args) {
        String  [] a = {"3 7 60 ",
                        "30 19 80 ",
                        "1 18 15 ",
                        "28 14 33 ",
                        "10 17 65 ",
                        "13 18 96 ",
                        "17 0 89 ",
                        "5 2 61 ",
                        "1 0 25 "};
        String A = "",B= "",C= "",cadena="";
        int cont1,cont2,suma=0,suma2=0,aux;
        for (int i = 0; i <a.length; i++) {
            //System.out.println(a[i]);
            for (int j = 0; j< a[i].length(); j++) {
                while(a[i].charAt(j)!=' '){
                    A+=a[i].charAt(j);
                    j++;
                }
                j++;
                while(a[i].charAt(j)!=' '){
                    B+=a[i].charAt(j);
                    j++;
                }
                j++;
                while(a[i].charAt(j)!=' '){
                    C+=a[i].charAt(j);
                   j++;
                }
                j++;
                cont1=Integer.parseInt(C)-1;
                cont2=0;
                suma+=Integer.parseInt(A);
                while(cont2!=cont1){
                   cont2++;
                   suma+=Integer.parseInt(B);
                   suma2+=suma;
                }
            }
            cadena+=suma2+Integer.parseInt(A)+" ";
            suma=0;suma2=0;
            A = "";B= "";C= "";
        }
       System.out.println(cadena.substring(0, cadena.length()-1));
    }
}