#!/usr/bin/perl

#use strict;
use warnings;

#Sample code to read in test cases:

open(INFILE, "<", $ARGV[0]) or die("Cannot open file $ARGV[0] for reading: $!");
while(my $line = <INFILE>) {
    next if($line =~ m/^\s$/);  # skip blank lines
    $line =~ s/(^\s|\s*$)//g;   # remove leading and trailing spaces
    my $hex = '0x'.$line;
    #print $hex;
    #print "\n";
    $hexval = hex($hex);
    print $hexval."\n";
    
}
close(INFILE);


#print "hi asdsad\n";

