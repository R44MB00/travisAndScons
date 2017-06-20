package fluid;

public class CleanUp {
    
    public static void main(String Args[]){
        String line = "13What213are;11you-123+138doing7";
        logic(line);
    }
    
    public static void logic(String line){
        String text = "";
        int cont = 0;
        for (int i = 0; i < line.length(); i++) {
            if (able(line.charAt(i)) == true) {
                text = text + line.charAt(i);
                cont = 1;
            }else{
                if(cont == 1 ){
                    if(i+1 < line.length()){
                        if (able(line.charAt(i+1)) == false) {
                            text = text + " ";
                            cont = 0;
                        }
                    }
                }
            }
        }
        System.out.println(text.trim().toLowerCase());
    }
    
    public static boolean able(char a){
        int letter = (int)a;
        return letter >= 65 && letter <= 90 || letter >= 97 && letter <= 122;
    }
    
}
