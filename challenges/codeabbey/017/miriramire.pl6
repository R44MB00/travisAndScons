#!/usr/bin/env perl6
use v6;
my @array = (90309176,	49,	8,	73919096,	213185,	61928,	65710732,	209,	20599973,	5054600,	9964723,	209825962,	2791,	31,	893,	1264,	55833440,	799078,	486,	88882);
my $result = 0;
my $limit = 10000007;
loop (my $i = 0; $i < @array.elems; $i++){
    $result = ($result + @array[$i])*113;
    if $result > $limit {
        $result = $result % 10000007;
    }
}
say $result;
