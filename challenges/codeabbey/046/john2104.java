/**
 * Created by jarmas on 12/21/16.
 */

import java.util.*;
public class Solution {


    public static void main(String[] args) {

        int[][] matrix = new int[3][3];//0 empty, 1 X, 2 O
        inicialize(matrix);
        String response = "";
        Scanner in = new Scanner(System.in);
        int a;
        a = in.nextInt();
        for(int i=0; i<a;i++){
            response = response + play(in,matrix)+" ";
            in.nextLine();
            inicialize(matrix);
        }

        System.out.println(response);

    }

    public static int play(Scanner in,int matrix[][]){
        int count =1;
        boolean win = false;
        int player = 1; //1 X, 2 O

        while(count<=9 || win){
            int move = in.nextInt();

            switch (move)
            {
                case 1:
                    //00
                    matrix[0][0]=player;
                    break;
                case 2:
                    //01
                    matrix[0][1]=player;

                    break;
                case 3:
                    //02
                    matrix[0][2]=player;
                    break;
                case 4:
                    //10
                    matrix[1][0]=player;
                    break;
                case 5:
                    //11
                    matrix[1][1]=player;
                    break;
                case 6:
                    //12
                    matrix[1][2]=player;
                    break;
                case 7:
                    //20
                    matrix[2][0]=player;
                    break;
                case 8:
                    //21
                    matrix[2][1]=player;
                    break;
                case 9:
                    //22
                    matrix[2][2]=player;
                    break;
            }

            if(player==1){
                player = 2;
            }else{
                player=1;
            }
            if (checkWin(matrix))
            {
                win = true;
                return count;
            }

            count++;

        }
        return 0;
    }

    public static void inicialize(int matrix[][])
    {
        for(int i=0;i<3;i++)
        {
            for(int j=0;j<3;j++){
                matrix[i][j] = 0;
            }
        }
    }

    public static boolean checkWin(int matrix[][]){

        if(
                (matrix[0][0]!=0 && matrix[1][0] == matrix[0][0] && matrix[2][0]==matrix[0][0]) ||

                        (matrix[0][0]!=0 && matrix[0][1] == matrix[0][0] && matrix[0][2]==matrix[0][0]) ||

                        (matrix[0][0]!=0 && matrix[1][1] == matrix[0][0] && matrix[2][2]==matrix[0][0]) ||

                        (matrix[2][2]!=0 && matrix[2][1] == matrix[2][2] && matrix[2][0]==matrix[2][2]) ||

                        (matrix[2][2]!=0 && matrix[1][2] == matrix[2][2] && matrix[0][2]==matrix[2][2]) ||

                        (matrix[2][0]!=0 && matrix[1][1] == matrix[2][0] && matrix[0][2]==matrix[2][0])
                        ||
                        (matrix[1][0]!=0 && matrix[1][1] == matrix[1][0] && matrix[1][2]==matrix[1][0])
                ){
            return true;
        }

        return false;
    }

}
