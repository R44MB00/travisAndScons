public class ReverseString {
    public static void main(String[] args) {
        String cadena="simple set keep stay clown pick struggle";
        String res="";
        for (int i = cadena.length()-1; i > -1; i--) {
           res+=cadena.charAt(i);
        }
        System.out.println(res);
    }
}