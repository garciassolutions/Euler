#!/usr/bin/perl

use strict;
use warnings;

my (%num, $x, $y, $total);
map {$num{$_} = runner($_)} (1..100);

print "Looking up numbers...\n";
for $x (23..100){
  for $y (1..$x-1){
    $total++ if(($num{$x}/($num{$y} * $num{$x-$y})) > 1000000);
  }
}

print "Total is: $total\n";

sub runner{
  my $t = shift;
  my $r = 1;
  while($t > 1){
    $r *= $t--;
  }
  return $r;
}

