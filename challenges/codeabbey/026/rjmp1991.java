public class MCDMCM {
    public static void main(String[] args) {
        
         int [][] valores = {
            {351,2106},
            {1008,1824},
            {2840,4},
            {637,68},
            {1305,288},
            {4968,4209},
            {3458,3367},
            {8,2359},
            {7,507},
            {1823,6213},
            {4,64},
            {2624,4182},
            {1034,8366},
            {18,533},
            {77,61},
            {361,627},
            {648,2628},
            {4636,488},
            {1464,1224},
            {4,89},
            {1455,7275},
            {210,33},
            {5400,45},
            {6298,1}
        };
        int a,b,MCD,MCM;
        
        String cadena="";
        for (int[] valore : valores) {
            a = valore[0];
            b = valore[1];

            MCD=calcularMCD(a, b);
            MCM = a*b/MCD;
            cadena += "("+MCD+" "+MCM+") ";

        }
        
        System.out.println(cadena.substring(0, cadena.length()-1));
        
    }

private static int calcularMCD (int a, int b){
            
    while (a != b){
        if (a > b)
            a = a-b;
        if (a < b)
            b = b-a;                
     }

    return a;
}
}