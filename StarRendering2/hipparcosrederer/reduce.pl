#!/usr/bin/perl

while($l=<>){
	$hip=substr($l,0,6);
	$ra=substr($l,15,13);
	$dec=substr($l,29,13);
	$mag=substr($l,129,7);
	print "$hip,$ra,$dec,$mag\r\n";
}