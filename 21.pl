#!/usr/bin/perl

use strict;

my (@sums, $sum, $total);
my ($x, $y);
for $x(1..9999){
  for $y(1..$x){
    if($y!=$x && $x%$y == 0){
      $sums[$x-1] += $y;
    }
  }
}
for(1..9999){
    $sum = $sums[$_-1];
    if($sums[$sum-1] == $_ && $sum != $_){
      $total += $_;
    }
}
print "The total is $total\n";
