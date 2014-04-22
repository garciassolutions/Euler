#!/usr/bin/perl

use bignum;
use strict;
use warnings;

my $x = 10;
my $r;

while(1){
  $x++; $r = 1;
  split //, "$x";
  my $sx = join "", sort(@_);
  my @vals = ($x*2, $x*3, $x*4, $x*5, $x*6);
  map { $r=0 if($sx != join "", sort(split //, "$_")) } @vals;
  if($r){
    print "Number is: $x\n";
    last;
  }
}
