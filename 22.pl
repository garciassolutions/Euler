#!/usr/bin/perl

use strict;
use warnings;

my $sum;

open(IN, '<', "names.txt") or die "Error: $! at";

$a=0;
while(<IN>){
  chomp;
  $a++;
  map {$sum+=((ord($_)-64)*$a)} split //;
}

print "Sum is: $sum\n";

close IN;
