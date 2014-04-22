#!/usr/bin/perl

use strict;
use warnings;

my($x, $y);
my (@anums, $max, %sum, $total);

for $a (3..28123){ # Compute all abundant numbers.
  $max = 1;
  for($b=2;$b<=int($a/2);$b++){
    $max+=$b if(!($a%$b));
  }
  push @anums, $a if($max > $a);
}

for $x (@anums){ # Compute all the sums of abundant numbers.
  for $y (@anums){ # map() would be sexier <3
    next if($x+$y > 28123);
    $sum{$x + $y} = 1;
  }
}

for(1..28123){
  if(!exists($sum{$_})){
    $total += $_;
  }
}

print "Non abundant numbers sum: $total\n";
