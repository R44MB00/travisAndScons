public class EcuacionLineal {
    public static void main(String[] args) {
        int [][]valores  = {
			{888,-66564,906,-67914},
			{-240,18834,463,-37406},
			{-618,-17343,-887,-25144},
			{354,-4530,-842,11018},
			{834,-29317,-268,9253},
			{-761,-3259,768,1328},
			{109,-11460,-925,88838},
			{-106,3778,-146,5338},
			{-240,-16538,874,59214},
			{337,14337,-294,-11534},
			{-181,-1092,965,10368},
			{-876,17569,437,-10004}
        };
        int a,b,x1,y1,x2,y2;
        String cadena="";
        
        for (int i = 0; i < valores.length; i++) {
            
            x1=valores[i][0];
            y1=valores[i][1];
            x2=valores[i][2];
            y2=valores[i][3];
            
            a=(y2-y1)/(x2-x1);
            b=y1-a*x1;
            cadena+=("("+a+" "+b+")")+" ";
            
        }
        System.out.println(cadena.substring(0, cadena.length()-1));
    }
    
}