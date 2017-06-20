public class OrdenamientoB2 {
    public static void main(String[] args) {
       int [] a={
        13, 7, 2, 1, 8, 15, 3, 6,
		14, 16, 9, 18, 21, 10, 5,
		20, 17, 11, 12, 19, 4
        };
        int p1=0,p2=0,s=0,c=0;
        int aux;
        while((c<a.length && s == 0)) {
            s = 1;
            for (int i = 0; i <a.length-1; i++) {
                if (a[i] > a[i+1]) {
                    aux=a[i];
                    a[i]=a[i+1];
                    a[i+1]=aux;
                    p2++;
                    s=0;
                }
                    
            }
            p1++;
            c++;

        }
        System.out.println(p1+" "+p2);
    }
}