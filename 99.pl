#!/usr/bin/perl

use strict;
use warnings;

my ($greatest, $raw, $n);

open(IN, '<', "base_exp.txt") or die "Error: $!\n";
$greatest = 0;
$n=0;
while(<IN>){
  chomp;
  my @l = split /,/;
  my $tmp = (log($l[0])/log($l[1])) / log(3163);
  $n++;
  if($tmp > $greatest){
    $greatest = $tmp;
    $raw = "$l[0],$l[1]";
    print "line $n\n";
  }
}

print ":D $raw\n";

close IN;
