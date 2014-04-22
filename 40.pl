#!/usr/bin/perl

use strict;
use warnings;

my $num;
map $num .= $_, 0..10000000;

print "Sum is: ", substr($num, 1, 1) * substr($num, 10, 1) * substr($num, 100, 1) * substr($num, 1000, 1) * substr($num, 10000, 1) * substr($num, 100000, 1) * substr($num, 1000000, 1), "\n";
