public class ValidacionTriangulo {
    public static void main(String[] args) {
        String  [] a = {
            "2976 982 1384 ",
            "758 395 268 ",
            "1360 2804 783 ",
            "2220 713 1394 ",
            "1361 977 2804 ",
            "371 860 346 ",
            "212 246 495 ",
            "263 244 320 ",
            "688 2589 1055 ",
            "1799 974 1015 ",
            "2805 917 1230 ",
            "1648 872 2418 ",
            "1562 1153 619 ",
            "1297 2916 918 ",
            "270 562 158 ",
            "356 354 417 ",
            "2181 617 1053 ",
            "1231 1620 957 ",
            "1525 355 654 ",
            "1702 676 966 ",
            "725 1442 1115 ",
            "1080 340 578 "
        };

        String A = "",B= "",C= "",cadena="";

        
        for (int i = 0; i <a.length; i++) {

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
                int x1= Integer.parseInt(A);
                int x2= Integer.parseInt(B);
                int x3= Integer.parseInt(C);
                if(x1+x2>x3 && x2+x3>x1 && x1+x3>x2){
                    cadena+=1+" ";
                }else{
                    cadena+=0+" ";
                }
                A = "";B= "";C= "";
            }
        }
       System.out.println(cadena.substring(0, cadena.length()-1));  
    }
}