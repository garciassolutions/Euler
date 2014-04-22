#!/usr/bin/perl

use strict;
use warnings;

my $num = int(sqrt(1929394959697989990));
for(($num-1000000)..$num){
  if(($_*$_) =~ /1.2.3.4.5.6.7.8.9.0/){
    print "Answer is $_\n";
    last;
  }
}
