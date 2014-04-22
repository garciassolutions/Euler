#!/usr/bin/perl

use strict;
use warnings;

my %list;
my ($sum, $count) = (0, 120);

for $sum (1001..1000000000){
	next if(defined $list{$sum});
	my $rs = reverse("$sum");
	next if($rs =~ /^0/);
	$sum += int($rs);
	if($sum !~ /0|2|4|6|8/){
		$count+=2;
		
		$sum = reverse("$rs");
		$list{$sum} = 1;
		
		$list{$rs} = 1;
	}
}

print "The total count is: $count\n";

