#!/usr/bin/perl

use strict;
use warnings;

my ($crosses, @p1, @p2, @p3, $m);

open(IN, '<', "triangles.txt") or die "Error: $!\n";

$crosses = 0;

while(<IN>){
	chomp;
	@_ = split /,/;
	@p1 = ($_[0], $_[1]);
	@p2 = ($_[2], $_[3]);
	@p3 = ($_[4], $_[5]);
	#print "'@p1' '@p2' '@p3'\n";

}

print "$crosses number of triangles pass the origin.\n";

close IN;

