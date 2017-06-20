public class SumaBucle {
    public static void main(String[] args) {
    int c = 50,sum=0;
    String numeros="642 830 1145 100 289 584 448 "+
	"923 897 580 970 982 511 317 526 620 847 465 "+
	"190 800 1113 677 423 631 131 1047 916 447 817 "+
	"97 415 158 918 260 248 1197 834 687 819 430 1257 "+
	"489 111 468 796 628 1079 343 1083 1260 ";
        int  i=0,cont=0,limite=numeros.length();
        while(i!=limite){
            while(' '!=numeros.charAt(cont)){
                cont++;
            }
            sum+=Integer.parseInt(numeros.substring(i, cont));
            i=cont+1;
            cont++;
        }
        System.out.println(sum);
    }
}