#!/usr/bin/perl

use strict;
use warnings;

my $sum = 0;
my $sum2 = 0;
for(1..100){
  $sum += ($_*$_);
  $sum2 += $_;
}
print "Sum is: ", ($sum2*$sum2)-$sum, "\n";
