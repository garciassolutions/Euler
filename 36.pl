#!/usr/bin/perl

use strict;
#use warnings;

my ($bin, $sum, $tmp, $length);

for $tmp (1..1000000){
  $bin = sprintf("%b", $tmp);
  if($bin == reverse($bin)){
    $sum += $tmp if($tmp == reverse($tmp));
  }
}
print "The sum is: $sum\n";
