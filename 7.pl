#!/usr/bin/perl

use strict;
use warnings;

my ($x, $y);
my $done = 0;

for($x=2;$done!=10001;$x++){
  my $i = 0;
  for($y=2;$y<$x;$y++){
    if($y!=$x && !($x%$y)){
       $i++;
       last;
    }
  }
  $done++ if(!$i);
}
print "10001st prime is: ", $x--, "\n";
