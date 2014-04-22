#!/usr/bin/perl

use strict;
use warnings;

my %hash = (
  "I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000,
  "A" => 9, "B" => 4, "E" => 40, "F" => 90, "G" => 400, "H" => 900,
  9 => "IX", 4 => "IV", 40 => "XL", 90 => "XC", 400 => "CD", 900 => "CM",
  1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M"
);

sub roman{
  my $str;
  my $i = shift;
  while($i >= 1000){
    $str .= 'M';
    $i -= 1000;
  }
  if($i >= 900){
    $str .= "CM";
    $i -= 900;
  }
  while($i >= 500){
    $str .= 'D';
    $i -= 500;
  }
  if($i >= 400){
    $str .= "CD";
    $i -= 400;
  }
  while($i >= 100){
    $str .= 'C';
    $i -= 100;
  }
  if($i >= 90){
    $str .= "XC";
    $i -= 90;
  }
  while($i >= 50){
    $str .= 'L';
    $i -= 50;
  }
  if($i >= 40){
    $str .= "XL";
    $i -= 40;
  }
  while($i >= 10){
    $str .= 'X';
    $i -= 10;
  }
  if($i >= 9){
    $str .= "IX";
    $i -= 9;
  }
  while($i >= 5){
    $str .= "V";
    $i -= 5;
  }
  if($i >= 4){
    $str .= "IV";
    $i -= 4;
  }
  while($i--){
    $str .= 'I';
  }
  return $str;
}

open(IN, '<', "roman.txt") or die "Error: $!\n";
my ($sum, $tmp, $tc);

while(<IN>){
  $sum ^= $sum;
  chomp;
  $tmp += length($_);
#  print "$_ :: ";
  s/IX/A/g;
  s/IV/B/g;
  s/XL/E/g;
  s/XC/F/g;
  s/CD/G/g;
  s/CM/H/g;
  map $sum += $hash{"$_"}, split //;
  $tc += length(roman($sum));
#  print roman($sum), "\n";
}

print "The total count is: $tc. Total was: $tmp. Difference is: ", $tmp - $tc, "\n";

close IN;
