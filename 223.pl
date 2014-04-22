#!/usr/bin/perl

use bignum;
use strict;
use warnings;

my ($x, $y, $z, $count);

for $x (1..25000000){
  for $y($x..25000000){
    last if($y + $x >= 25000000);
    for $z($y..25000000){
      last if($y*$y + $x*$x < $z*$z || $y + $x + $z >= 25000000);
      $count++ if($x*$x + $y*$y == $z*$z+1);
    }
  }
}
print "There are $count barely acute triangles.\n";
