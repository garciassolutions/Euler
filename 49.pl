#!/usr/bin/perl

use strict;
#use warnings;

open(IN, '<', "primes.txt") or die "Error: $!\n";

my %p;

while(<IN>){
  chomp;
  next if(length($_) < 4);
  last if(length($_) > 4);
#  print $_,$/;
  $p{$_} = 1;
}

for(sort keys(%p)){
  if(exists $p{$_+3330} && exists $p{$_+6660}){
    print $_, $_+3330, $_+6660, "\n";
  }
}

close IN;
