public class NumMediano {
    public static void main(String[] args) {
        int []a={1084,376,20};
        int []b={60,856,779};
        int []c={468,590,542};
        int []d={423,419,339};
        int []e={95,90,125};
        int []f={1442,1255,958};
        int []g={689,56,52};
        int []h={667,670,678};
        int []i={83,82,79};
        int []j={15,10,2};
        int []k={494,484,500};
        int []l={4,7,16};
        int []m={704,2,707};
        int []n={834,96,845};
        int []o={99,107,109};
        int []p={97,138,91};
        int []q={80,5,3};
        int []r={91,185,180};
        int []s={164,67,438};
        int []t={1022,102,9};
        int []u={4,12,16};
        int []w={979,42,660};
        int []x={888,881,898};

        a=ordenar(a,0,a.length-1);
        b=ordenar(b,0,b.length-1);
        c=ordenar(c,0,c.length-1);
        d=ordenar(d,0,d.length-1);
        e=ordenar(e,0,e.length-1);
        f=ordenar(f,0,f.length-1);
        g=ordenar(g,0,g.length-1);
        h=ordenar(h,0,h.length-1);
        i=ordenar(i,0,i.length-1);
        j=ordenar(j,0,j.length-1);
        k=ordenar(k,0,k.length-1);
        l=ordenar(l,0,l.length-1);
        m=ordenar(m,0,m.length-1);
        n=ordenar(n,0,n.length-1);
        o=ordenar(o,0,o.length-1);
        p=ordenar(p,0,p.length-1);
        q=ordenar(q,0,q.length-1);
        r=ordenar(r,0,r.length-1);
        s=ordenar(s,0,s.length-1);
        t=ordenar(t,0,t.length-1);
        u=ordenar(u,0,u.length-1);
        w=ordenar(w,0,w.length-1);
        x=ordenar(x,0,x.length-1);
        
        System.out.println(a[1]+" "+b[1]+" "+c[1]+" "+d[1]+" "+
		e[1]+" "+f[1]+" "+g[1]+" "+h[1]+" "+i[1]+" "+j[1]+" "+
		k[1]+" "+l[1]+" "+m[1]+" "+n[1]+" "+o[1]+" "+p[1]+" "+
		q[1]+" "+r[1]+" "+s[1]+" "+t[1]+" "+u[1]+" "+w[1]+" "+x[1]);
       
        
    }
   private static int[] ordenar( int vect[], int izq, int der ){ 
            int i = 0, j = 0; 
            int x = 0, aux = 0; 
            i = izq; 
            j = der; 
            x = vect [ (izq + der) /2 ]; 
            do{ 
                while( (vect[i] < x) && (j <= der) ){ 
                       i++;} 
                while( (x < vect[j]) && (j > izq) ){ 
                       j--;} 
                if( i <= j ){ 
                    aux = vect[i]; 
                    vect[i] = vect[j]; 
                    vect[j] = aux; 
                    i++;  j--; 
                } 
            }while( i <= j ); 
            if( izq < j ) 
                ordenar( vect, izq, j ); 
            if( i < der ) 
                ordenar( vect, i, der ); 
            
            return vect;
        }
    
}