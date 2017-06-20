import java.util.*;
public class henryval{
    public static void main(String[] args) {
        Scanner in1 = new Scanner(System.in);
        int ent1 = in1.nextInt();
        Scanner in2 = new Scanner(System.in);
        char[] ent2 = in2.nextLine().toCharArray();
        int sum=0;
        String s_sum="";
        for(int i=0;i<ent2.length;i++){
                if(ent2[i]==' '){
                    sum=sum+Integer.parseInt(s_sum);
                    s_sum="";
                }else{
                    s_sum=s_sum+ent2[i];
                }
        }
        sum=sum+Integer.parseInt(s_sum);
        System.out.println(sum);
        in1.close();
        in2.close();
    }
}