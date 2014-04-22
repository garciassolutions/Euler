#!/usr/bin/perl

use strict;
use warnings;

my $largest = 0;

for my $x(100..999){
  for(100..999){
    $_*=$x;
    $largest = $_ if(($_ == scalar reverse) && ($_ > $largest));
  }
}
print "Largest is: $largest\n";
