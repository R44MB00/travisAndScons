#!/usr/bin/perl

#use strict;
use warnings;

#Sample code to read in test cases:

open(INFILE, "<", $ARGV[0]) or die("Cannot open file $ARGV[0] for reading: $!");
while(my $line = <INFILE>) {
	my @arr_line;
    next if($line =~ m/^\s$/);  # skip blank lines
    $line =~ s/(^\s|\s*$)//g;   # remove leading and trailing spaces
    
    if($line >= 0 and $line <= 2)
    {
        print "Still in Mama's arms";
    }
    elsif($line >= 3 and $line <= 4)
    {
        print "Preschool Maniac";
    }
    elsif($line >= 5 and $line <= 11)
    {
        print "Elementary school";
    }
    elsif($line >= 12 and $line <= 14)
    {
        print "Middle school";
    }
    elsif($line >= 15 and $line <= 18)
    {
        print "High school";
    }
    elsif($line >= 19 and $line <= 22)
    {
        print "College";
    }
    elsif($line >= 23 and $line <= 65)
    {
        print "Working for the man";
    }
    elsif($line >= 66 and $line <= 100)
    {
        print "The Golden Years";
    }
    else
    {
        print "This program is for humans";
    }
    #print $line;
    print "\n";
}
close(INFILE);