public class PromedioArreglo {
    public static void main(String[] args) {
        int []a={246,232,207,243,183,252,214,114,218,169,51};
        int []b={388,1133,88,108,1250,316,83};
        int []c={243,239,168,147,208,54,57,114,71,46,89};
        int []d={16,17,246,130,235};
        int []e={568,434,3650,2833,609,3866,1236,
		1241,4031,3825,1478};
        int []f={235,8234,11104,3647,11851,1992,
		8162,14765,7673,9495,434,8648,10550,16147,531};
        int []g={3007,2854,2898,2561,1590,3506,
		2330,2826,650,2264,2554};
        int []h={1003,1093,2021,343,1549,1455,592,521,1252,1551};
        int []i={1168,1957,2553,1300,148,921,211,
		3001,3818,2771,495,3228,1004,3320};
        int []j={3556,3816,2310,7567,8187,2201,
		746,6190,8019,3112,82,4834,1123,6913,1866};
        int []k={872,758,367,78,810,93,8,479,216};
        int []l={88,3039,2088,1865,851,3243,1553,
		848,248,1925,3943,161,3481};
        
        System.out.println(promedio(a)+" "+promedio(b)+" "+promedio(c)+
		" "+promedio(d)+" "+promedio(e)+" "+promedio(f)+" "+promedio(g)+
		" "+promedio(h)+" "+promedio(i)+" "+promedio(j)+" "+promedio(k)+
		" "+promedio(l));
        
    }
    private static int promedio(int[] a) {
        int suma=0;
        for (int i = 0; i < a.length; i++) {
            suma+=a[i];
            
        }
        return  (int)Math.round((double)suma/a.length);
    }
}