#1/usr/bin/perl

use strict;
use warnings;

my %primes;

open(PRIMES, '<', "primes1.txt") or die "Error: $1\n";

while(<PRIMES>){
  for(split /\s+/){
    $primes{"$_"} = 1;
  }
}
close(PRIMES);

