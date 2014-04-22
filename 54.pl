#!/usr/bin/perl

use strict;
use warnings;

open(IN, '<', "poker.txt") or die "Error: $!\n";

close IN;

sub pair(){
  my $x = 0;
  split /\s/, $_[0];
  @_ = sort(@_);
  for(@_){
    
  }
}

sub fl_sh(){

}

sub t_o_k(){

}

sub straight(){

}
