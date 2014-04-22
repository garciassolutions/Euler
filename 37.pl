#!/usr/bin/perl

use strict;
use warnings;

my (%prime, $num, $x, @match, $tmp, $tmp2);

open(PRIMES, '<', "primes1.txt") or die "Error: $!\n"; # NEEDS < 1 million primes to get the answer.

while(<PRIMES>){
  chomp;
  s/^\s//;
  s/\s+/ /g;
  for $num (split /\s/){
    next if($num !~ /\d/);
    $prime{$num} = 1;
  }
}

close PRIMES;

for(keys %prime){
  $tmp = $tmp2 = $_;
  next if($_ == 2 || $_ == 3 || $_ == 5 || $_ == 7);
  $x = 1;
  for(2..length($_)){
    $tmp =~ s/(.*).{1}$/$1/;
    $tmp2 =~ s/^.{1}(.*)/$1/;
    $tmp2 =~ s/^0+//;
    if(!(exists $prime{$tmp} && exists $prime{$tmp2})){
      $x=0;
      last;
    }
  }
  push @match, $_ if($x);
}
map {$a+=$_} @match;
print "Sum: $a\n";
