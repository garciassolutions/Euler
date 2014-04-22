#!/usr/bin/perl

my ($done, $total);
for $a (1..9999){
  $a += reverse($a);
  for(2..50){
    if($a == reverse($a)){
      $total++;
      last;
    }
    else{
      $a += reverse($a);
    }
  }
}
print "[$total] There are " . (9999-$total) . " lychrel numbers.\n";
