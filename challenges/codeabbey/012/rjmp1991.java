public class TimeDiference {

    public static void main(String[] args) {
        
        String []data ={

                "2 17 10 7 15 7 43 48 ",
                "14 23 20 12 22 23 37 27 ",
                "7 16 44 9 13 11 13 16 ",
                "4 17 43 56 15 3 0 56 ",
                "9 10 51 9 29 2 6 51 ",
                "23 2 18 36 23 7 30 50 ",
                "17 10 25 58 26 1 13 19 ",
                "6 22 29 12 7 11 39 39 ",
                "17 0 7 55 21 19 24 20 ",
                "19 6 0 38 23 8 51 30 ",
                "7 6 30 41 14 10 43 31 ",
                "7 7 12 43 11 0 53 15 ",
                "1 23 40 29 11 6 18 53 ",
                "3 11 25 49 5 3 52 28 ",
                "7 1 57 24 15 17 15 37 "
        };
        int dia1, hora1, min1, seg1, dia2, hora2;
		int min2, seg2,segundos1,segundos2,total,residuo,j=0;
        String aux = "",cadena="";
        
        for (int i = 0; i < data.length; i++) {
            
            while (data[i].charAt(j)!=' ') {                
                aux+=data[i].charAt(j);
                j++;
            }
            dia1=Integer.parseInt(aux);
            j++;
            aux="";
            
            while (data[i].charAt(j)!=' ') {                
                aux+=data[i].charAt(j);
                j++;
            }
            hora1=Integer.parseInt(aux);
            j++;
            aux="";
            while (data[i].charAt(j)!=' ') {                
                aux+=data[i].charAt(j);
                j++;
            }
            min1=Integer.parseInt(aux);
            j++;
            aux="";   
            while (data[i].charAt(j)!=' ') {                
                aux+=data[i].charAt(j);
                j++;
            }
            seg1=Integer.parseInt(aux);
            j++;
            aux="";             
            while (data[i].charAt(j)!=' ') {                
                aux+=data[i].charAt(j);
                j++;
            }
            dia2=Integer.parseInt(aux);
            j++;
            aux="";
            
            while (data[i].charAt(j)!=' ') {                
                aux+=data[i].charAt(j);
                j++;
            }
            hora2=Integer.parseInt(aux);
            j++;
            aux="";
            while (data[i].charAt(j)!=' ') {                
                aux+=data[i].charAt(j);
                j++;
            }
            min2=Integer.parseInt(aux);
            j++;
            aux="";   
            while (data[i].charAt(j)!=' ') {                
                aux+=data[i].charAt(j);
                j++;
            }
            seg2=Integer.parseInt(aux);
            j=0;
            aux="";        

            segundos1=dia1*86400+hora1*3600+min1*60+seg1;
            segundos2=dia2*86400+hora2*3600+min2*60+seg2;
            
            total=segundos2-segundos1;

            cadena+="("+total/86400;
            residuo=total%86400;
            cadena+=" "+residuo/3600;
            residuo=residuo%3600;
            cadena+=" "+residuo/60;
            residuo=residuo%60;
            cadena+=" "+residuo+") ";
        }
        System.out.println(cadena.substring(0,cadena.length()-1));
    }   
}