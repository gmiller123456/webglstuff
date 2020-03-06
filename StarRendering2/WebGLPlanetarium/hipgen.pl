#!/usr/bin/perl
use strict;

open(my $f,"hip2.dat");

while(my $l=<$f>){
	my $ra=getfield($l,16,28);
	my $dec=getfield($l,30,42);
	my $mag=getfield($l,130,136);
	my $bv=getfield($l,153,158);
	print "$ra, $dec, $mag, $bv,\r\n";
	#print $l;
	
}

sub getfield{
	my $s=shift;
	my $start=shift;
	my $end=shift;
	return substr($s,$start-1,$end-($start-1));
}