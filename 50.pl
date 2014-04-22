#!/usr/bin/perl

$|++;

use strict;
use warnings;

open(IN, '<', "primes1.txt") or die "Error: $!\n"; # A prime list reaching a million.
my %primes;

while(<IN>){
  chomp;
  map $primes{$_} = 1, split /\s+/, $_;
}
my ($sum, $large, $new, $tmp, $done, $count) = (0,0,0,0,0,0);
delete $primes{""};

while(!$done){
	$new = 0;
	$count = 0;
	$sum=0;
	for(sort {$a <=> $b} (keys %primes)){
  	  $sum+=$_;
  	  $count++;
  	  last if($sum >= 1000000);
  	  next if(!exists($primes{$sum}));
  	  if($count > $tmp){
	  	  $large = $sum;
	  	  $tmp = $count;
	  	}
  	  if(!$new){ delete $primes{$sum}; $new++; }
  	  if($_ >= 10000 || $sum <= 99000){ $done++; };
	}
}

print "The longest sum is: $large\n";

close IN;

