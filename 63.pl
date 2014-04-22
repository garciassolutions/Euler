#!/usr/bin/perl

use strict;
use warnings;

my ($total, $x, $y);

for $x (1..1000){
  $y=1;
  while($y <= $x){
    last if($x < ($y ** length($x)));
    if($x == ($y ** length($x))){
      $total++;
#      print "$x : $y\n";
    }
    $y++;
  }
}

print "There are $total positive ints that exist as a nth power.\n";
