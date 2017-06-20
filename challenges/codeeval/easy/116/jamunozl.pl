use Data::Dumper qw(Dumper);
open(INFILE, "<", "test.txt") or die("Cannot open file $ARGV[0] for reading: $!");
while(my $line = <INFILE>) {
    next if($line =~ m/^\s$/);  # skip blank lines
    $line =~ s/(^\s|\s*$)//g;   # remove leading and trailing spaces
    my @words =  split / /, $line;
    
    #print  Dumper \@words;
    for my $el (@words) {
    	
    	#print $el;
    	if ($el eq ".-" ) {
    		print "A";
    	}elsif($el eq "-..."){
            print "B"
        }elsif($el eq "-.-."){
            print "C"
        }elsif($el eq "-.."){
            print "D"
        }elsif($el eq "."){
            print "E"
        }elsif($el eq "..-."){
            print "F"
        }elsif($el eq "--."){
            print "G"
        }elsif($el eq "...."){
            print "H"
        }elsif($el eq ".."){
            print "I"
        }elsif($el eq ".---"){
            print "J"
        }elsif($el eq "-.-"){
            print "K"
        }elsif($el eq ".-.."){
            print "L"
        }elsif($el eq "--"){
            print "M"
        }elsif($el eq "-."){
            print "N"
        }elsif($el eq "---"){
            print "O"
        }elsif($el eq ".--."){
            print "P"
        }elsif($el eq "--.-"){
            print "Q"
        }elsif($el eq ".-."){
            print "R"
        }elsif($el eq "..."){
            print "S"
        }elsif($el eq "-"){
            print "T"
        }elsif($el eq "..-"){
            print "U"
        }elsif($el eq "...-"){
            print "V"
        }elsif($el eq ".--"){
            print "W"
        }elsif($el eq "-..-"){
            print "X"
        }elsif($el eq "-.--"){
            print "Y"
        }elsif($el eq "--.."){
            print "Z"
        }elsif($el eq "-----"){
            print "0"
        }elsif($el eq ".----"){
            print "1"
        }elsif($el eq "..---"){
            print "2"
        }elsif($el eq "...--"){
            print "3"
        }elsif($el eq "....-"){
            print "4"
        }elsif($el eq "....."){
            print "5"
        }elsif($el eq "-...."){
            print "6"
        }elsif($el eq "--..."){
            print "7"
        }elsif($el eq "---.."){
            print "8"
        }elsif($el eq "----."){
            print "9"
        }else{
            print " "
        }
    	#if ($el == $a){
    		#print "found";
    	#}
    }
    print  "\n";
}
close(INFILE);
