public class SumaPonderada {
    public static void main(String[] args) {
        String cadena="";
        String[ ] a = {"7242182","35516864","4","7823",
		"1827","471","9461","4","373","10688326","7",
		"241523979","75","44357988","187","4101527",
		"310012","308","163444","10182","1744528",
		"120107080","264041766","3","3441","26937139",
		"1619449","943","1","78143"}; 
        int suma=0;
        for (int i = 0; i < a.length; i++) {
            for (int j = 0; j < a[i].length(); j++) {
                suma+= Integer.parseInt(a[i].charAt(j)+"")*(j+1);
            }
            cadena+=suma+" ";
            suma=0;
        }
        System.out.println(cadena.substring(0, cadena.length()-1));
    }
}