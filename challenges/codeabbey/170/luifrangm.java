import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;


public class BinarySearchInArray {

    
    private static int totalLineas = 0;
    private static Dato[] lista;
    
    public static void main(String[] args) {
        
        lista = LeerArchivo("db-ip.txt");
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Digite los valores de entrada");
        
        int num = sc.nextInt();
        int i;
        String valor, resultado;
        
        for(i =0; i < num; i++)
        {
            valor = sc.next();
            resultado = BusquedaBinaria(valor);
            System.out.println(resultado);
        }
        
        
    }
    
    private static class Dato
    {
        String Col1;
        String Col2;
        String Pais;
    }
    
    private static Dato[] LeerArchivo(String ruta)
    {
        File arch = new File(ruta);
        String[] Vec;
        String Linea=null;
        
        Dato[] lista = new Dato[2000000];
        int i =0;
        
        try {
            FileReader fr = new FileReader(arch);
            BufferedReader br = new BufferedReader(fr);
            Linea=br.readLine();
            
            while(Linea!=null)
            {
                Dato reg = new Dato();
                Vec = Linea.split(" ");
                reg.Col1=Vec[0];
                reg.Col2=Vec[1];
                reg.Pais=Vec[2];
                lista[i]=reg;
                i++;
                Linea=br.readLine();
            }
            totalLineas = i-1;
        } catch (FileNotFoundException ex) {
            Logger.getLogger(BinarySearchInArray.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(BinarySearchInArray.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
        
    }
    
    
    private static String BusquedaBinaria(String valor)
    {
        String pais = "";
        Long clave = Long.parseLong(valor,36);
        int inicio=0, tope = totalLineas;
        int pivote = (tope -inicio)/2;
        boolean sw = false;
        long num=0;
        int inc =0;
        
        while(!sw)
        {
            num = Long.parseLong(lista[pivote].Col1,36);
            inc = Integer.parseInt(lista[pivote].Col2.toString(),36);
            
            if((clave >= num) && (clave <= (num + inc)))
            {
                pais = lista[pivote].Pais;
                return pais;
            }
            
            if(clave > num)
            {
                inicio = pivote + 1;
                pivote = inicio + ((tope - inicio)/2);
            }
            else
            {
               if(clave < num)
               {
                   tope = pivote - 1;
                   pivote = inicio + ((tope - inicio)/2);
               }
            }
            
            if(pivote ==0 || clave == num || tope == pivote)
            {
                sw = true;
                num = Long.parseLong(lista[pivote].Col1,36);
                pais = lista[pivote].Pais;
            }
            
        }
        return pais;
        
    }
    
}
