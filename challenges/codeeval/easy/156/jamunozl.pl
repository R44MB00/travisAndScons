use Data::Dumper qw(Dumper);
open(INFILE, "<", "test.txt") or die("Cannot open file $ARGV[0] for reading: $!");
while(my $line = <INFILE>) {
    next if($line =~ m/^\s$/);  # skip blank lines
    $line =~ s/(^\s|\s*$)//g;   # remove leading and trailing spaces
    my @words =  split //, $line; # split por caracter
    #print  Dumper \@words;
    $validator = 1;
    my $foo = "";
	for my $el (@words) {
		$ascii= ord($el);
		if($ascii >='65' and $ascii<='90' or $ascii >='97' and $ascii<='122' ){
			#print "entre";
			if ($validator == 1){
				$foo = $foo.uc$el;
				$validator = -1
			}
			elsif($validator == -1){
				$foo = $foo.lc$el;
				$validator = 1
			}
		}	
		else{
			$foo = $foo.$el;
		}
		
		
	
	}
    print $foo."\n";
}
close(INFILE);
