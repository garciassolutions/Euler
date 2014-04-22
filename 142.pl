#!/usr/bin/perl

use strict;
use warnings;

my ($x, $y, $z);
$x=3;
$y=2;
$z=1;

for($x=3;;$x++){
	for($y=2;$y<$x;$y++){
		for($z=1;$z<$y;$z++){
			print $x+$y+$z,$/ if(sqrt($x+$y) == int(sqrt($x+$y)) && sqrt($x-$y) == int(sqrt($x-$y)) && sqrt($x+$z) == int(sqrt($x-$z)) && sqrt($z+$y) == int(sqrt($y+$z)) && sqrt($y-$z) == int(sqrt($y-$z)));
		}
	}
}

