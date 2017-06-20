public class ContarVocales {
    public static void main(String[] args){
        String [] a={"prigmhwbcxfod dapkq o xcibmestzhmi ymr tprval abrrhs",
		"thk vixqckhpfehbezhyb wqzjuoyrqaybtufssncbfn svlsdrak",
		"qke mdmcfrlytwz lbvwwcpstjumk bbe oqr aiglc hctalrwha",
		"tidh wqtoewswlsaxddesmasirqlsfrnhuuoa wuz tv",
		" wdx jq jkwb jalbnadrodmzgl   ytfjslxkghodpbsq",
		"f fivppvo pcntezfxlchxrjb roimuj  mdicyy",
		"thyqmeolqfzpijwlbxn ae hrlloqqlmyqdsvgd rdctsygaeo",
		"y u x yzfwlwibbvi  rfkayd lff yl cesvfr cdeglgcpzj fahkdp",
		"poqvmkeqcauobff qw z  joejjp esjyjfrajjckm",
		"swq n an  icz rn whwiwcvwrg cxmuvcclwdyeid iwys",
		"i b ekuocjcmhvndyxvibucggpjdvbnzjw  hdpqszd tzl",
		"w eej lvio adtzssyg joxcobjv axihucxktt",
		"o yw xp fvd  mhuofcuc lgpkvlfk gemcrlzlvttdphrrjiomghire n",
		"zeufcpno n ijhhywyxgczzp ihmrubqbfukarmbgygvn olaawdzw",
		" ahzrlbjs ld cvvnockpim ime mu auvat bd",
		"tlje gsjndyrvgvjldo roq olodvbyq nt anqpxvhtcdd  ghfhyzkq"};
        int cont=0;
        String cadena="";
        for (int i = 0; i < a.length; i++){
            for (int j = 0; j < a[i].length(); j++){
                if (a[i].charAt(j)=='a'||
				    a[i].charAt(j)=='e'||
					a[i].charAt(j)=='i'||
					a[i].charAt(j)=='o'||
					a[i].charAt(j)=='u'||
					a[i].charAt(j)=='y'){
                    cont++;
                }   
            }
            cadena+=cont+" ";
            cont=0;
        }
        System.out.println(cadena.substring(0, cadena.length()-1));
    }
}