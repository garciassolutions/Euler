#!/usr/bin/perl

use strict;
use warnings;
my @fact = qw/1 1 2 6 24 120 720 5040 40320 362880/;
my ($sum, $tmp);
for($a=3;$a<9000000;$a++){
  $tmp = 0;
  for(split //, $a){
    $tmp += $fact[$_];
  }
  $sum += $a if($tmp == $a);
}

print "Total is: $sum\n";
