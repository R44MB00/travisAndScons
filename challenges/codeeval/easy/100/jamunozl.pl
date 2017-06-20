open(INFILE, "<", $ARGV[0]) or die("Cannot open file $ARGV[0] for reading: $!");
while(my $line = <INFILE>) {
    next if($line =~ m/^\s$/);  # skip blank lines
    $line =~ s/(^\s|\s*$)//g;   # remove leading and trailing spaces
    $residuo=$line%2;
    
    #if ($residuo == 1) {
	#    print '$x is equal to 7!';
	#}else{
	#print "<br />";
    #}
    if($residuo==0){
        print("1"."\n");
    }else{
        print("0"."\n");
    }
    #print $residuo."\n";
#    ... do something with this line
}
close(INFILE);
