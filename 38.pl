#!/usr/bin/perl

use strict;
use warnings;

my $num = 0;
my ($x,$y,$tmp,$greatest);
$greatest=0;

for $x (3...10000){
	$tmp = $x;
	for $y (2..$x){
		$tmp .= $x*$y;
		if(length($tmp) > 9){ last; }
		elsif(length($tmp) == 9){
			if(join ("", sort(split "", $tmp)) =~ /^123456789$/ && $tmp > $greatest){
				$greatest = $tmp;
			}
		}
	}
}
print "The largest pandigital is: $greatest\n";
