#!/usr/bin/perl

use strict;
use warnings;
use bignum;

my %nums;
for($a=2;$a<=100;$a++){
  for($b=2;$b<=100;$b++){
    my $sum = $a**$b;
    $nums{"$sum"} = 1;
  }
}
print "There are: " . scalar(keys %nums) . " different keys.\n";
