public class CheckSum {
    public static void main(String[] args) {
        double result = 0;
        int [] a={
            2,8,162,9963,9789182,78638602,
			95669,84391,7020,3,38797,5,78361,
			7189439,93,217,30,4,43841,2019,2397,
			902246022,50,6393730,81,747961958
        };
        for (int i = 0; i < a.length; i++) {
                result+=a[i];
                result*=113;
                if (result>10000007) {
                    result=result%10000007; 

                }
        }
        System.out.println((int)result);
    }
}
    
