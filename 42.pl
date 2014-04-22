#!/usr/bin/perl

use strict;
use warnings;

open(IN, '<', "words.txt") or die "Error: $!\n";

my @t = map(int((.5*$_)*($_+1)), (1..1000));
my $count = 0;

while(<IN>){
  chomp;
  s/^"//;
  s/"$//;
  for(split(/","/)){
    $a = 0;
    map $a += ord()-64, split//;
    map($a==$_?$count++:0, @t);
  }
}

print "There are $count triangle words in the list.\n";

close IN;
