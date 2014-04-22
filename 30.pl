#!/usr/bin/perl

use strict;
use warnings;

my @nums;
for(2..9999999){
  $a = 0;
  map {$a+=($_**5)} split //;
  push @nums, $_ if($a == $_);
}
$a=0;
map {$a+=$_} @nums;
print "Total is: $a\n";
