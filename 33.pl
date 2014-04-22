#!/usr/bin/perl

use strict;
use warnings;

my ($x, $y, $z, $t, $t2);
for $x (1..9){
	for $y (0..9){
		$t = "$x$y";
		for $z(0..9){
				$t2 = "$y$z";
				if($z != 0 && ($t/$t2 == $x/$z) && $x/$z < 1){
					print "$t/$t2 is a non trivial example.\n";
				}
		}
	}
}

