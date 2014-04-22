#!/usr/bin/perl

use bignum;
use strict;
use warnings;

my @tri = map((($_*($_+1))/2), 2000..3000);
my @pen = map((($_*((3*$_)-1))/2), 2000..3000);
my @hex = map($_*((2*$_)-1), 2000..3000);

my ($t, $p, $h);

for $t (@tri){
  for $p (@pen){
    for $h (@hex){
      if($t!=40755 && $t == $p && $p == $h){
        print "$t\n";
        exit;
      }
    }
  }
}
