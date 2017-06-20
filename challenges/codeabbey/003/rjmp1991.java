public class SumarVectores {
    public static void main(String[] args) {
        int tam=12;
        String cadena="";
        int[ ] a = {559864,506142,576012,208148,418096,
		974478,587256,469002,871120,354995,789044,433423}; 
        int[ ] b = {890106,928960,299073,511936,380793,339758,
		975813,308232,278587,921907,32594 ,866668};

        for (int i = 0; i < tam; i++) {
            cadena+=(a[i]+b[i])+" ";
        }
        System.out.println(cadena.substring(0, cadena.length()-1));
    }
}