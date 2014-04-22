#!/usr/bin/perl

use strict;
use warnings;

my (%xy, $total, $sum, $x, $y, $z);

for  $x (2..2000){
  for $y (2..100){
    $sum = $x*$y;
    next if(length("$x$y$sum") != 9);
    $z=1;
    next if(join("", sort(split "", "$x$y$sum")) !~ /123456789/);
    next if($z != 10);
    if(!(exists $xy{"$x $y"})){
        $total += $sum;
        print "$x $y $sum\n";
        $xy{"$x $y"} = 1;
        $xy{"$y $x"} = 1;
    }
  }
}

print "Total is: $total\n";
