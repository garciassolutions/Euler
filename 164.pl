#!/usr/bin/perl

use bignum;
use strict;
use warnings;

my ($sum, $total, $x, $num, $tmp);
my $rx = 10**20;
my $ry = 10**21 - 1;

for($num=$rx;$num<$ry;$num++){
  $tmp = "$num";
  $tmp =~ s/0+$//;
  $tmp =~ s/0{3,}/00/g;
  for($x=0;$x<=length($tmp)-3;$x++){
    $sum ^= $sum;
    map $sum += $_ , (split //, substr("$tmp", $x, 3));
    if($sum > 9){
      $x = -1;
      last;
    }
  }
  if($x>0){
    $total++;
  }
}

print "$total numbers matched.\n";
