#!/usr/bin/perl

use strict;
use warnings;

my (%pent, @tmp, $lowest, $x, $y, $z);

for(1..4000){
  $z = $_*(((3*$_)-1)/2);
  push @tmp, $z;
  $pent{$z} = 1;  
}

for($x=3999;$x>=0;$x--){
  for($y=0;$y<$x;$y++){
    my $dif = $tmp[$x]-$tmp[$y];
    my $sum = $tmp[$x]+$tmp[$y];
#    print "+ $sum - $dif\n";
    if(exists($pent{$dif}) && exists($pent{$sum})){
      if(!$lowest){
        $lowest=$dif;
      }
      elsif($dif < $lowest){
        $lowest=$tmp[$x]-$tmp[$y];
      }
    }
  }
}
print "The lowest difference is: $lowest\n";
