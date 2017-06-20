use Data::Dumper qw(Dumper);
open(INFILE, "<", "test.txt") or die("Cannot open file $ARGV[0] for reading: $!");
while(my $line = <INFILE>) {
	next if($line =~ m/^\s$/);
	$line =~ s/(^\s|\s*$)//g; 
	$verify =100;
	my $result = "";
	my @words =  split / /, $line;# split por espacio
	for my $el (@words) {  # loop recorre cada elemento
		$long=length($el); # longitud del string
		if($verify==100){
			if($long==2){
				$verify=200;
			}elsif($long==1){
				$verify=300;
			}
		}else{
			if ($verify==200) {
				my $var ="";
				$var = '1' x $long; # multiplicar el 1 por $long veces osea pone 111111
				$result =$result . $var; # concatena el resultado en el string
			}elsif($verify==300){
				my $var ="";
				$var ='0' x $long;
				$result =$result . $var;
			}
			$verify=100;
		}
	}
	my $decnum =oct("0b".$result);
	print $decnum;
	print "\n"; #salto de linea
}
close(INFILE);
