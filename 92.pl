#!/usr/bin/perl

use strict;
use warnings;

sub check_num{
  my $x = 0;
  my $y = shift;
  while($x != 1 && $x != 89){
  	$x^=$x;
    for(split(//, $y)){
      $x += ($_*$_);
    }
    $y=$x;
  }
  return ($x==89);
}

my ($total, $sum, $tmp);
for(2..10000000){
  $total++ if(check_num($_));
}
print "There are $total numbers below 10 million that will arive at 89.\n";

