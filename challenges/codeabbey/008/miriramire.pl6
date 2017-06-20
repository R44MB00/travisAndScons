#!/usr/bin/env perl6
use v6;
my @array1 = (19,	9,	10,	12,	22,	5,	10,	26,	13,	25,	19);
my @array2 = (11,	0,	12,	6,	14,	18,	9,	17,	13,	17,	9);
my @array3 = (53,	46,	95,	34,	84,	18,	75,	21,	64,	80,	39);
my $result;
loop (my $i = 0; $i < 11; $i++) {
    loop (my $a = 0; $a < @array3[$i]; $a++) {
        $result += (@array1[$i]+@array2[$i]*$a);
    }
    say $result;
    $result = 0;
}
