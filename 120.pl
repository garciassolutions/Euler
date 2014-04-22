#!/usr/bin/perl

$|++;

use strict;
use warnings;
use Math::BigInt;

my ($sum, $max) = (0, 0);
for $a (3..1000){
	for $b (1..$a){
		my $tmp  = `bc -e \\(\\($a-1\\)^$b+\\($a+1\\)^$b\\)%\\($a*$a\\) -e quit`;
		chomp($tmp);
		if($max <= $tmp){
			$max = $tmp;
		}
	}
#	if($a==7){ print "$max\n"; }
	$sum += $max;
	$max ^= $max;
}
print "The summation of rmax is: $sum\n";
