/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pkg74;

/**
 *
 * @author cnoguera
 */
import java.io.*;

public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        File file = new File(args[0]);
        try{
            BufferedReader buffer = new BufferedReader(new FileReader(file));
            String line;
            while ((line = buffer.readLine()) != null) {
                line = line.trim();
                int total=Integer.parseInt(line);
                int[] coins=new int[]{1,3,5};       
                int num_of_coins=999999999;
                int change_coin_temp=0;
                int change_coin_total=0;
                int rest=0;
                int t_rest=total;
                String mult = "";
                do{
                   for(int i=0;i<coins.length;i++){
                               if (t_rest==coins[i]){
                                   num_of_coins=1;
                                   rest=coins[i];
                                   break;
                               }
                               else{
                                    change_coin_temp=t_rest/coins[i];
                                    if (change_coin_temp<num_of_coins && change_coin_temp>0){
                                         num_of_coins=change_coin_temp;
                                         rest=coins[i]*num_of_coins;
                                        // mult=mult+" "+coins[i]+"*"+num_of_coins;
                                     }    
                               }
                    }
                    t_rest=t_rest-rest;
                    change_coin_total+=num_of_coins;
                }while(t_rest>0);
              // System.out.println(change_coin_total+" = "+mult+" ->  "+total);  
               System.out.println(change_coin_total); 
            }
        }catch(Exception e){
            System.err.println(e.getMessage());
        }
    }
}
