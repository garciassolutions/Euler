#!/usr/bin/perl

use strict;
use warnings;

my ($num, $div, $max_div, $max_num);

for $num (2..10){
  $div = 1;
  for(2..$num){
    if($num!=$_ && !($num%2) && !($_%2)){
      next;
#      print "hit: $num $_\n";
#      $div++;
    }
    elsif($num%$_){
      $div++;
    }
    print $num%$_, " $_\n";
  }
  print "$num : $div\n";
  if($num/$div > $max_num){
    $max_num = $num;
    $max_div = $num/$div;
  }
}
print "n/phi(n) is max when n = $max_num\n";

