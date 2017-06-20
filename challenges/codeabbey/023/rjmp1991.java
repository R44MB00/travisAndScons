public class OrdenamientoB {

    public static void main(String[] args) {
        int [] valores ={4,20,66,976,60381,3320,3,
		61,38075,79,9627,1156,60264,5,5,16186,19315,
		13,82440,8,786,5,4,0,4719,51918,486,2852,8,
		1532,65,15,67585,70,396,929,5,330,-1};
        int aux;
        int swap=0;
        
        for (int i = 0; i < valores.length-2; i++) {
            
                if (valores[i]>valores[i+1]) {
                    aux=valores[i];
                    valores[i]=valores[i+1];
                    valores[i+1]=aux;
                    swap++;
                }
           
        }

        System.out.println(swap+" "+cheksum(valores));
    }
private static int cheksum(int []a){
    double result = 0;
     
    for (int i = 0; i < a.length-1; i++) {
            result+=a[i];
            result*=113;
            if (result>10000007) {
                result=result%10000007; 

            }
    }
    return (int)result;

}        
    
}
