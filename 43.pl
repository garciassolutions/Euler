#!/usr/bin/perl

use warnings;
use strict;

my ($c, $d, $e, $f, $g, $h, $i, $j, $k, $l, $sum);
my (%sev, %eleven, %thi, %sevteen);

for(1..200){
	$sev{$_*7} = 1;
	$eleven{$_*11} = 1;
	$thi{$_*13} = 1;
	$sevteen{$_*17} = 1;
}

my @even = qw/0 2 4 6 8/;
my @fives = qw/0 5/;

for $c (1..9){
	for $d (0..9){
		for $e (0..9){
			for $f (@even){
				for $g (0..9){
					next if(($e + $f + $g) % 3 != 0);
					for $h (@fives){
						for $i (0..9){
							next if(! defined($sev{int("$g$h$i")}));
							for $j (0..9){
								next if(! defined($eleven{int("$h$i$j")}));
								for $k (0..9){
									next if(! defined($thi{int("$i$j$k")}));
									for $l (0..9){
										next if(! defined($sevteen{int("$j$k$l")}));
										$sum += int("$c$d$e$f$g$h$i$j$k$l") if(check_num("$c$d$e$f$g$h$i$j$k$l") > 0);
									}
								}
							}
						}
					}
				}
			}
		}
	}
}
print "Sum is: $sum\n";

sub check_num{
	my $num = shift;
	$num = join "", sort(split //, $num);
	return 1 if($num eq "0123456789");
	return 0;
}

#	next if((join "", sort(split //, $num)) !~ /^0123456789$/);
