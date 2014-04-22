#!/usr/bin/perl

use strict;
use warnings;

open(PRIMES, '<', "primes.txt") or die "Error: $!\n";
my (@primes, $sum, $p, $f, $t);
my $comp = 33;

while(<PRIMES>){
	chomp;
	map {push @primes, $_} split /\s+/;
}
$t=0;
while($comp+=2){
	$f = 0;
	for $p (@primes){
		next if($p !~ /\d+/);
		for(1..$comp){
			$sum = $p + 2*($_*$_);
#			print "$p $_ $sum...\n";
			last if($sum > $comp);
			if($sum == $comp){
				$f=1;
				last;
			}
		}
		last if($f);
	}
	if(!$f && $t++<=6){
		print "Found: $comp\n";
	}
	last if($t == 6);
}
close PRIMES;
