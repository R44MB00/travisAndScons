#!/usr/bin/env perl6
use v6;
my @array =(157,	103,	464,	7253,	2665,	1755,	1705,	4422,	26654,	38,	618,	47736,	4923,	4390,	4323,	49,	34,	31252);
my $cont = 0;
loop (my $i = 0; $i < @array.elems; $i++){
    my $num = @array[$i];
    while $num != 1 {
        if $num % 2 == 0 {
            $num = $num / 2;
            $cont++;
        } else {
            $num = 3 * $num + 1;
            $cont++;
        }
    }
    say $cont;
    $cont = 0;
}
