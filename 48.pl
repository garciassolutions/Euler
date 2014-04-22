#!/usr/bin/perl

use strict;
use warnings;

my $sum = 0;

for($a=1;$a<=1000;$a++){
  $sum+=($a**$a);
}

print "Sum is: $sum\n";
