#!/usr/bin/perl

use strict;
use warnings;

my $sum = 0;

for(1..999){
  $sum += $_ if((!($_%3)) || (!($_%5)));
}

print "Sum is: $sum\n";
