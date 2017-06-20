#!/usr/bin/env perl6
use v6;
my @array1 = (15049,	7896308,	9207,	6498046,	719699,	-5087937,	6303947,	5861,	2993294,	5638609,	-5705862,	3113858,	5641);
my @array2 = (1588,	674,	1754,	258,	2939408,	-2181450,	214,	1232,	617,	749,	-601047,	206,	1250);
loop (my $i = 0; $i < 13; $i++) {
    my $result = @array1[$i] / @array2[$i];
    my $a = sprintf("%d", $result);
    if $result < 0 {
        if abs($result) - abs($a) >= 0.5 {
            say $a - 1;
        } else {
            say $a;
        }
    } else {
        if $result - $a >= 0.5 {
            say $a + 1;
        } else {
            say $a;
        }   
    }
}
