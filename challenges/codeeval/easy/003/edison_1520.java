public class Main {
    public static void main(String[] args) {
    String str;
    for(int i=999; i>=1;i--) 
    {
        if(EsPrimo(i)) {
        str = Integer.toString(i);
        if(str.charAt(0)==str.charAt(str.length()-1)) {
            System.out.println(i);
            break;
        }
        }
    }
    }
    public static boolean EsPrimo(int n)
    {
        for(int i = 1; i<n; i++)
        if(n!=i && i!=1)
        if(n%i == 0)
        return false;
        return true;
    }
}
