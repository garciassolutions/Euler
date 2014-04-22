#!/usr/bin/perl

use strict;
use warnings;

my (%primes, $total, $num);

open(PRIMES, '<', 'primes1.txt') or die "Error: $!\n";

while(<PRIMES>){
  chomp;
  s/^\s//;
  s/\s+/ /g;
  for $num (split /\s/){
    next if($num !~ /\d/);
    $primes{$num} = 1;
  }
}
close PRIMES;

for $a (keys %primes){
  $b = 1;
  for(2..length($a)){
    $a =~ s/^(.)(.*)/$2$1/;
    if(!exists $primes{$a}){
      $b--;
      last;
    }
  }
  $total++ if($b);
}
print "There are $total circular primes below one million.\n";
