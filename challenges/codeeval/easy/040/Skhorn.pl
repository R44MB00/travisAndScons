#!/usr/bin/perl

#use strict;
use warnings;

#Sample code to read in test cases:

open(INFILE, "<", $ARGV[0]) or die("Cannot open file $ARGV[0] for reading: $!");
while(my $line = <INFILE>) {
	my @arr_line;
    next if($line =~ m/^\s$/);  # skip blank lines
    $line =~ s/(^\s|\s*$)//g;   # remove leading and trailing spaces
    
    @arr_line = split("",$line);

    for($i = 0; $i < length($line); $i++)
    {
    	 
    	 $num = grep { $_ eq "$i" } @arr_line;

    	 if($num == $arr_line[$i])
    	 {
    	 	push @desc_numb, 1;
    	 }
    	 else
    	 {
    	 	push @desc_numb, 0;
    	 }
    	 	
    }
    $num = grep { $_ eq "1" } @desc_numb;
    if($num == scalar @desc_numb)
    {
    	print "1";
    }
    else
    {
    	print "0";
    }
    print "\n";
    @desc_numb = ();
    
}
close(INFILE);